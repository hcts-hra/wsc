xquery version "3.0";

declare namespace tei="http://www.tei-c.org/ns/1.0";
import module namespace xmldb="http://exist-db.org/xquery/xmldb";

let $log-in := xmldb:login("/db", "admin", "")
let $proofs := collection("/db/apps/wsc-data/proofs/")
let $persons := $proofs//tei:listPerson/*
let $filename := "wsc_persons_p.xml"

order by number(substring-after($persons/tei:persName[1]/@n, 'Bio'))    
return
    xmldb:store("/db/apps/wsc-data/proofs", $filename, 
    <TEI>
        <teiHeader xml:lang="en">
            <fileDesc>
                <titleStmt>
                    <title>WSC person data in TEI</title>
                    <principal>Joachim Kurtz</principal>
                    <respStmt>
                        <resp>xml modeling</resp>
                        <persName>Jens Østergaard Petersen</persName>
                        <persName>Kaja Müller-Wang</persName>
                    </respStmt>
                    <respStmt>
                        <resp>TEI markup</resp>
                        <persName>Duncan Paterson</persName>
                    </respStmt>
                    <respStmt>
                        <resp>data proofing</resp>
                        <persName>Hong Liang</persName>
                        <persName>Lee Kyonghee</persName>
                        <persName>Qiu Zhiqiong</persName>
                    </respStmt>
                </titleStmt>
                <publicationStmt>
                    <distributor>Cluster of Excellence Asia and Europe in a Global Context</distributor>
                    <availability><p>Yet unpublished data</p></availability>
                </publicationStmt>
                <sourceDesc>
                    <p>Extract of person data from Filemaker database, Mar 03 2015</p>
                    <p>born digital</p>
                </sourceDesc>
            </fileDesc>      
            <encodingDesc>
                <projectDesc>
                    <p>This file is part of the online database HRA 5 "Modern Chinese Scientific Terminolgies / Wissenschaftsprache Chinesisch (WSC)" hosted by the Heidelberg Research Architecture (HRA)</p>
                </projectDesc>
            </encodingDesc>
            <profileDesc>
                <langUsage>
                    <language ident="en">english</language>
                    <language ident="zh-Hant">chinese traditional characters</language>
                    <language ident="zh-alac-97">pinyin transliteration of chinese characters without tonal diacrits</language>
                    <language ident="ja">japanese</language>
                    <language ident="de">german</language>
                </langUsage>
            </profileDesc>
            <revisionDesc>
                <change when="2015-04-01" who="DP">corrections of note fields based on proofs</change>
                <change when="2015-03-11" who="DP">added NER to note elements</change>
                <change when="2015-03-09" who="DP">activated links</change>
                <change when="2015-03-04" who="DP">trimmed empty elements</change>
            </revisionDesc>
        </teiHeader>
        <text>
            <body>
                <listPerson>
                    {$persons}
                </listPerson>
            </body>
        </text>
    </TEI>)