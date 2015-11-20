xquery version "3.0";

declare namespace tei="http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";

(: fill in path to files:)
declare variable $old := doc("wsc_persons.xml")/tei:TEI/tei:text/tei:body;
declare variable $new := doc("wsc_persons_patched.xml")/tei:TEI/tei:text/tei:body;


(: functions to patch and cleanup bio export from 15/08/2015   :)
(: !!!! THIS IS SLOW !!!! :)

(: TODO: there is still a problem with duplicate bibl entries eg.
   uuid-61c33a02 and uuid-646fecd8 both refer to "礦學考質" 
   see Github #62 :)
   


declare function local:dedupe ($nodes as node()*) as item()* {
    
(:  gets rid of duplicate bibl entries, that is entries with the same title, where one omits its idno's and that appear twice for no reason  :)

for $n in $nodes//tei:bibl/tei:title
return 
    if (empty($n/../tei:idno/text()) and exists($n/../../tei:bibl/tei:title[. = $n]/../tei:idno) and empty($n/../tei:note))
    then (update delete $n/..)
    else ()
};


declare function local:remove-empty-elements($nodes as node()*)  as node()* {
    
(:  does what it says  :)
   
   for $n in $nodes
   return
     if ($n instance of element())
     then if (normalize-space($n) = '')
          then ()
          else element { node-name($n)}
                { $n/@*,
                  local:remove-empty-elements($n/node())}
     else if ($n instance of document-node())
     then local:remove-empty-elements($n/node())
     else $n
 } ;


declare function local:fix_export($nodes as node()*) as item()* {
    
(:    Constructs proper references    :)
(:    Deletes superflous children of listBibl    :)
(:    copies marked-up note fields  inside bibl itmes to new file    
      there are some mysterious note fields not present old, but present in the patch, hence the targeted update of the listBibls:)

for $n in $nodes
return
        typeswitch ($n)
        case text() return $n
        case comment() return $n
        case element(tei:title)
            return update delete $n
        case element(tei:idno)
            return update replace $n with <ref target="uuid:{substring-after($n/string(), "uuid-")}"/>
        case element(tei:author)
            return
                if(starts-with($n/string(), "Bio"))
                then(update value $n with <ref target="#{string(//persName[@n eq string($n)][1]/../@xml:id)}"/>)
                else(update value $n with <ref target="#{$n/string()}"/>)
        case element(tei:editor)
            return
                if(starts-with($n/string(), "Bio"))
                then(update value $n with <ref target="#{string(//persName[@n eq string($n)][1]/../@xml:id)}"/>)
                else(update value $n with <ref target="#{$n/string()}"/>)
        case element(tei:publisher)
            return
                if(starts-with($n/string(), "Bio"))
                then(update value $n with <ref target="#{string(//persName[@n eq string($n)][1]/../@xml:id)}"/>)
                else(update value $n with <ref target="#{$n/string()}"/>)
        case element(tei:note)
            return 
                let $patches := 
                    for $a at $count in $old//tei:bibl/tei:note
                    return  <patch n="{$count}">{$a}</patch>
            for $n at $count in $new//tei:bibl/tei:note,
                $patch in $patches[@n = $count]
            return update replace $n with $patch/node()
        default return local:fix_export($n/node())
};

declare function local:patch_old($nodes as node()*) as item()* {
    let $patches := 
    for $a at $count in $new//tei:listBibl
    return  <patch n="{$count}">{$a}</patch>

for $nodes at $count in $old//tei:listBibl,
    $patch in $patches[@n = $count]
return update replace $nodes with $patch/node()
};

declare function local:test_patch($n as node()*) as item()* {
    
(:  aux function returned 3 itmes for manual fixing  :)

for $n in $old//tei:bibl
return
    if(empty(local:test_patch($n)))
    then ('nothing to patch')
    else if(exists($n/tei:ref))
        then()
        else(<fix_me>
            <person xml:id="{$n/../../@xml:id/string()}"/>
            <item>{$n/..}</item>
        </fix_me>
        )
};

let $export_clean := local:remove-empty-elements(local:dedupe($new))
let $export_fixed := local:fix_export($new//listBibl)
return
    local:patch_old($export_fixed)

