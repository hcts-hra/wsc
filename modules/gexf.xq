xquery version "3.0";

declare namespace gexf="http://www.gexf.net/1.2draft";
declare namespace viz="http://www.gexf.net/1.2draft/viz";
declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace mods="http://www.loc.gov/mods/v3";
declare namespace xsi="http://www.w3.org/2001/XMLSchema-instance";

declare default element namespace "http://www.gexf.net/1.2draft";


(:these should be changed to '/db/apps/WSC/biodb | bibdb/' once WSC is fully appified:)
declare variable $bio := doc('/db/resources/commons/WSC/biodb/wsc_persons.xml');
declare variable $bib := collection('/db/resources/commons/WSC/bibdb');
(:adjust as necessary:)
declare variable $creator := "Duncan Paterson";
declare variable $person := $bio/tei:TEI/tei:text/tei:body/tei:listPerson/tei:person;
declare variable $work := $bio/tei:TEI/tei:text/tei:body/tei:listPerson/tei:person//tei:listBibl[@type='participatedWorks'];

(:!!!don't forget to explicitely stop sigma's rendering process on the page where graphs are to be displayed!!!:)

declare function local:bipart($n1 as node()*, $n2 as node()*) as item()* {

(:this function returns an undirected bipartite graph. It uses shape attributes for the different types of nodes $persons and $work, edges are drawn between $works that appear as child element of $persons.
    The color scheme is colorblind friendly:)


<gexf xmlns="http://www.gexf.net/1.2draft" xmlns:viz="http://www.gexf.net/1.2draft/viz"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.gexf.net/1.2draft http://www.gexf.net/1.2draft/gexf.xsd"
    version="1.2">
    <meta lastmodifieddate="{fn:current-date()}">
        <creator>{$creator}</creator>
        <description>Full Person-Title graph of WSC</description>
    </meta>
    <graph defaultedgetype="undirected">
        <nodes> 
            {
            for $a in $n1 
            (:grab persons and displays their first recorded name:)
            return 
                <node id="{data($a/@xml:id)}"
                    label="{$a/tei:persName/tei:persName[1]/text()}">
                    <viz:color r="216" g="179" b="101" a="1.0"/>
                    <viz:shape value="square"/>
                </node>}
            
            { 
            for $b at $pos in distinct-values($n2//tei:title)
            (:unfortunatly not all works have an idno element hence the $pos statement substituting for idno:)
            (:furthermore 
                count(//listBibl[@type="participatedWorks"]) - count(//listBibl[@type="participatedWorks"]/bibl//title[@xml:lang="zh-Hant"]) 
            returns 673 items without a chinese title. So lets grab unique works by title:)
            return
                <node id="{element counter {$pos}}" label="{$b/tei:bibl/tei:title/tei:title[2]/text()}">
                    <viz:color r="90" g="180" b="172" a="1.0"/>
                    <viz:shape value="triangle"/>
                </node>} 
        </nodes>
        <edges> 
            {for $b at $pos in $n2
            (:there are as many edges as there are works, hence the overlap with the target's node ids shouldn't matter.  The sources UUIDs should be well unique :)
            return 
                <edge id="{element counter {$pos}}" source="{$b/ancestor::tei:person/@xml:id}" target="{element counter {$pos}}"/>}
        </edges>
    </graph>
</gexf>
};



xmldb:store ('/db/apps/WSC/graphs/', 'full_bio2work.gexf', local:bipart($person, $work))

(:let $data :=:)
(::)
(:<list>:)
(:    <a id="1">:)
(:        <ab>:)
(:            <b>blah</b>:)
(:        </ab>:)
(:    </a>:)
(:    <a id="2">:)
(:        <b>blah</b>:)
(:        <b>blahh</b>:)
(:    </a>:)
(:    <a id="3">:)
(:        <b>blagh</b>:)
(:        <b>blah</b>:)
(:    </a>    :)
(:</list>:)
(::)
(::)
(:return:)
(:    <graph>:)
(:        <nodes>:)
(:            { for $n at $pos in distinct-values($data//b):)
(:            return:)
(:                <node id="{$pos}">{$n}</node>}:)
(:        </nodes>:)
(:        <edges>:)
(:            {for $n in $data//b:)
(:            return:)
(:                <edges source="{$n/ancestor::a/@id}" target="{$n}"/>}:)
(:        </edges>:)
(:    </graph> :)
