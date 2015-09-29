xquery version "3.0";

declare namespace mods="http://www.loc.gov/mods/v3";
declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace xlink="http://www.w3.org/1999/xlink";

import module namespace xmldb="http://exist-db.org/xquery/xmldb";

declare default element namespace "http://www.loc.gov/mods/v3";

declare variable $biodb := collection("/db/apps/wsc-data/biodb/")//tei:body;
declare variable $bibdb := collection("/db/apps/wsc-data/bibdb/")//mods:mods;


(:5982 were missing links from latest mods export:)
(:904 (excluding etal entries) are still missing:)
(:for a detailed view of missing bio entities see report below:)
(:see Github #73, #74:)

declare function local:patch_person_links ($nodes as node()*) as item()* {

(:this fixes 4764 person entries:)
    let $missing := $bibdb//mods:name[not(@xlink:href)]/mods:namePart[1]/text()
    let $patch :=   $biodb/tei:listPerson/tei:person//tei:persName/tei:persName/text()
                

for $nodes in $missing[. = $patch],
    $a in $patch
where $nodes = $a
return 
    update insert attribute xlink:href {$a/ancestor::tei:person/@xml:id/string()} into $nodes/../..
};

declare function local:patch_org_type ($nodes as node()*) as item()* {
    
(:Change @type of name elements that refer to organisations in TEI:)
    let $missing := $bibdb//mods:name[not(@xlink:href)]/mods:namePart[1]/text()
    let $patch :=   $biodb/tei:listPerson/tei:org//tei:orgName/text()
                

for $nodes in $missing[. = $patch],
    $a in $patch
where $nodes = $a
return
    update value $nodes/ancestor::mods:name/@type with 'corporate'
};

declare function local:patch_org_links ($nodes as node()*) as item()* {
(:this fixes 277 orgName links:)
let $missing := $bibdb//mods:name[not(@xlink:href)]/mods:namePart[1]/text()
let $patch :=   $biodb/tei:listPerson/tei:org//tei:orgName/text()
                

for $nodes in $missing[. = $patch],
    $a in $patch
where $nodes = $a
return
    update insert attribute xlink:href {$a/ancestor::tei:org/@xml:id/string()} into $nodes/../..
};

declare function local:patch_links ($nodes as node()*) as item()* { 
    
(:casts a wider net:)
let $missing := $bibdb//mods:name[not(@xlink:href)]//mods:namePart/text()
let $patch :=   $biodb/tei:listPerson/tei:org//tei:orgName/text() | $biodb/tei:listPerson/tei:person//tei:persName/tei:persName/text()

for $nodes in $missing[. = $patch],
    $a in $patch
where $nodes = $a
return
     update insert attribute xlink:href {$a/ancestor::*/@xml:id/string()} into $nodes/../..
};    

declare function local:record ($nodes as node()*) as item()* {
    
let $collection := "/db/apps/wsc-data/modules/bibdb"
let $filename := "missing_bio_links.xml"
return
    xmldb:store($collection, $filename,
<report>
    <num>
        <missing_total>{count($bibdb//mods:name[not(@xlink:href)])}</missing_total>
        <missing_not_etal>{count($bibdb//mods:name[not(@xlink:href)]) - count($bibdb//mods:name[not(@xlink:href)]/mods:etal)}</missing_not_etal>
    </num>
    <list>{
        for $nodes in $bibdb//mods:name[not(@xlink:href)]
        return 
            <item>
                <record_id>{$nodes/ancestor::mods:mods/@ID/string()}</record_id>
                <name_string>{$nodes/mods:namePart/string()}</name_string>
            </item>    
    }
    </list>
</report>)
};


declare function local:org_strings ($nodes as node()*) as item()* {
    
    let $list := local:record($bibdb)
    let $total := count(distinct-values($list//name_string))    
        
    for $string at $pos in distinct-values($list//name_string)
    order by $string
    return
        <string n="{$pos}" total="{$total}">{distinct-values($string)}</string>
    };
    
let $collection := "/db/apps/wsc-data/modules/bibdb"
let $filename := "missing_strings.xml"
return
    xmldb:store($collection, $filename, <root>{local:org_strings($bibdb)}</root>)
    
        
 