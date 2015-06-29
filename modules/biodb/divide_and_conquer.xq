xquery version "3.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";
import module namespace xmldb="http://exist-db.org/xquery/xmldb";


(:create a folder for proofs and split the existing person records into chunks of 100:)
let $log-in := xmldb:login("/db", "admin", "")
let $create-collection := xmldb:create-collection("/db/apps/wsc-data", "proofs")
let $person := doc('/db/apps/wsc-data/wsc_persons.xml')/tei:TEI/tei:text/tei:body/tei:listPerson/*

for $i in (1, (1 to count($person)) [. mod 100 = 0])
let $n :=  subsequence($person, $i, 100)

let $record := 
    <tei:TEI xmlns="http://www.tei-c.org/ns/1.0">
    <tei:teiHeader>
        <tei:fileDesc>
            <tei:titleStmt>
                <tei:title>WSC person data</tei:title>
            </tei:titleStmt>
            <tei:publicationStmt>
                <tei:p>Yet unpublished data</tei:p>
            </tei:publicationStmt>
            <tei:sourceDesc>
                <tei:p>Extract of person data from Filemaker database, Mar 03 2015</tei:p>
            </tei:sourceDesc>
        </tei:fileDesc>
        <tei:revisionDesc>
            <tei:change when="2015-03-11" who="DP">added NER to note elements</tei:change>
            <tei:change when="2015-03-09" who="DP">activated links</tei:change>
            <tei:change when="2015-03-04" who="DP">trimmed empty elements</tei:change>
        </tei:revisionDesc>
    </tei:teiHeader>
    <tei:text>
        <tei:body>
            <tei:listPerson>
                {$n}
            </tei:listPerson>
        </tei:body>
    </tei:text>
</tei:TEI>

let $filename := "wsc_proofs_" ||$i|| ".xml"

return  
    xmldb:store("/db/apps/wsc-data/proofs", $filename, $record)


(:for incorporating proof see reassemble.xq :)