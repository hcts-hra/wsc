xquery version "3.0";

import module namespace config ="http://exist-db.org/mods/config" at "../../modules/config.xqm";

declare function local:install-wsc-data-release() as item()* {
    let $http-headers := <headers/>    
    let $wsc-collection-name := "WSC"    
    let $wsc-db-path := xmldb:encode-uri($config:mods-commons || "/" || $cluster-publications-collection-name || "/")
    let $wsc-url := "http://kjc-ws2.kjc.uni-heidelberg.de:8900/exist/rest" || $wsc-db-path
    let $resources := httpclient:get(xs:anyURI($wsc-url), false(), $http-headers)/*[2]/*/*
    
    return
        (
            if (xmldb:collection-available($wsc-db-path))
                then (xmldb:remove($wsc-db-path))
                else ()
            ,
            xmldb:create-collection($config:mods-commons, xmldb:encode-uri($wsc-collection-name))
            ,
            for $resource-description in $resources/*
                let $resource-name := data($resource-description/@name)
                let $resource-contents := httpclient:get(xs:anyURI($wsc-url || $resource-name), false(), $http-headers)/*[2]/*
            return xmldb:store($wsc-db-path, $resource-name, $resource-contents)
        )    
};

local:install-wsc-data-release()