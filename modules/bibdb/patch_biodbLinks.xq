xquery version "3.0";

declare namespace mods="http://www.loc.gov/mods/v3";
declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace xlink="http://www.w3.org/1999/xlink";

declare default element namespace "http://www.loc.gov/mods/v3";

declare variable $biodb := collection("/db/apps/wsc-data/biodb/")//tei:body;
declare variable $bibdb := collection("/db/apps/wsc-data/bibdb/")//mods:mods;

(:5982 name elements are missing links:)

declare function local:patch_bio_links ($nodes as node()*) as item()* {

(:this fixes 4764 entries ignoring etal entries this leaves 1193 entries not accounted for:)
let $missing := $bibdb//mods:name[not(@xlink:href)]/mods:namePart[1]/text()
let $patch :=   $biodb/tei:listPerson/tei:person//tei:persName/tei:persName/text()
                

for $nodes in $missing[. = $patch],
    $a in $patch
where $n = $a
return 
    update insert attribute xlink:href {$a/ancestor::tei:person/@xml:id/string()} into $nodes/../..
};

<report>
    <missing>{count($bibdb//mods:name[not(@xlink:href)]) - count($bibdb//mods:name[not(@xlink:href)]/mods:etal)}</missing>
</report>



