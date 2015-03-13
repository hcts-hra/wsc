xquery version "3.0";

declare variable $exist:controller external;
declare variable $exist:root external;
declare variable $exist:prefix external;
declare variable $exist:path external;
declare variable $exist:resource external;

if ($exist:path eq '/')
    then
        <dispatch xmlns="http://exist.sourceforge.net/NS/exist">
            <redirect url="{request:get-context-path()}/apps/tamboti/modules/search/index.html?ui=wsc"/>
        </dispatch>
    else
        (: everything else is passed through :)
        <dispatch xmlns="http://exist.sourceforge.net/NS/exist">
            <cache-control cache="yes"/>
        </dispatch>
