xquery version "3.0";
import module namespace xdb="http://exist-db.org/xquery/xmldb";
import module namespace functx="http://www.functx.com" at "/db/system/repo/functx-1.0/functx/functx.xql";
declare namespace tei="http://www.tei-c.org/ns/1.0";
declare default element namespace "http://www.tei-c.org/ns/1.0";



declare variable $old := doc("wsc_persons.xml")//tei:body;
declare variable $new := doc("bio-all-150810.xml")//tei:body;
declare variable $temp := doc("person_new.xml");


(: functions for the latest bio export    :)

(: TODO: there is still a problem with duplicate bibl entries eg.
   uuid-61c33a02 and uuid-646fecd8 both refer to "礦學考質" :)


declare function local:fix_export($nodes as node()*) as item()* {

(:    Deletes Empty elements :)
(:    Constructs proper references    :)
(:    Deletes superflous children of listBibl    :)
(:    use  "    if (string($n) = '' and string($n/@*) = '')    "     to not delete elements without content values but with attribute values     :)
(:    copies marked-up note fields from the old to new files    :)


for $n in $nodes
return
    if (string($n) = '')
    then (update delete $n)
    else (
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
        case element(tei:note)
            return
                for $a in $old//tei:note
                where functx:path-to-node-with-pos($n) eq functx:path-to-node-with-pos($a)
                return update replace $n with $a
        default return local:fix_export($n/node())
        )
};



local:fix_export($new//*)
