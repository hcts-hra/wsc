xquery version "3.0";
import module namespace graphing="http://exist-db.org/xquery/tei-graphing";
declare namespace tei="http://www.tei-c.org/ns/1.0";
let $doc := doc("/db/data/commons/WSC/biodb/wsc_persons.xml")
return
graphing:relation-graph($doc//tei:listPerson[not(parent::tei:listPerson)], $doc//tei:idno, <parameters><param name="output" value="graphml"/></parameters>)