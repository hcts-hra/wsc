xquery version "3.0";
declare namespace tei="http://www.tei-c.org/ns/1.0";
(:declare default element namespace "http://www.tei-c.org/ns/1.0";:)

(:doc('file:/C:/Users/duncan.paterson/Documents/GitHub/wsc-data/WSC/biodb/wsc_persons.xml')     office:)
(:doc('file:/Users/duncanpaterson/Documents/Github/wsc-data/WSC/biodb/wsc_persons.xml')         laptop:)
(:doc('file:/Users/halalpha/Documents/gits/wsc-data/WSC/biodb/wsc_persons.xml')                 home:) 

declare variable $bio := doc('file:/C:/Users/duncan.paterson/Documents/GitHub/wsc-data/WSC/biodb/wsc_persons.xml');

for $n in $bio
return
    <report>
        <idno>{count($bio//tei:idno)}</idno>
        <bio_entries>
            <total>{count($bio//tei:person)}</total>
            <unique>{count(distinct-values($bio//tei:person))}</unique>
            <author>{count($bio//tei:author)}
                <particpant_is_author>{
                for $a in $bio//tei:author
                return
                    if ($a/text() = data($a/../../../tei:persName/@n))
                    then (count($a))
                    else ()}</particpant_is_author>
                <particpant_not_author>{count($bio//tei:person)}</particpant_not_author>
            </author>
        </bio_entries>
        <bibl>{count($bio//tei:bibl)}</bibl>                
    </report>