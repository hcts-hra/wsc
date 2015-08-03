xquery version "3.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";
(:declare default element namespace "http://www.tei-c.org/ns/1.0";:)

declare variable $bio := doc('file:/Users/halalpha/Documents/gits/wsc-data/WSC/biodb/wsc_persons.xml');

for $n in $bio
return
    <report>
        <idno>{count($bio//tei:idno)}</idno>
        <bio_entries>{count($bio//tei:person)}</bio_entries>
        <bibl>{count($bio//tei:bibl)}</bibl>
        
    </report>