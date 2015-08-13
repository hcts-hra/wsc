xquery version "3.0";

import module namespace config ="http://exist-db.org/mods/config" at "../../modules/config.xqm";

declare function local:install-wsc-data-release() as item()* {
    let $http-headers := <headers/>    
    let $wsc-collection-name := "WSC"    
    let $wsc-db-path := xmldb:encode-uri($config:mods-commons || "/" || $wsc-collection-name || "/")
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

(:duncdrum should be changed to exec-asia-and-europe once the repo has moved there:)
GET /repos/duncdrum/wsc-data/releases/latest

accept application/vnd.github.v3+json

(:Oauth token


Accept: application/xml
<OAuth>
  <token_type>bearer</token_type>
  <scope>repo, read:public_key, read:repo_hook, notifications</scope>
  <access_token></access_token>
</OAuth>

:)

(:First, inform test server about new releases via webhook. (post new releases).
Second, authenticate upodate priviledge.
Third, xupdate the data files.
Fourth, write a log
(Fifth post release notes):)

