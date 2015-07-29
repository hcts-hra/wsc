xquery version "3.0";

declare namespace gexf="http://www.gexf.net/1.2draft";
declare namespace viz="http://www.gexf.net/1.2draft/viz";
declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace mods="http://www.loc.gov/mods/v3";
declare namespace xsi="http://www.w3.org/2001/XMLSchema-instance";

declare default element namespace "http://www.gexf.net/1.2draft";


(:these should be changed to '/db/apps/WSC/biodb | bibdb/' once WSC is fully appified:)
declare variable $bio := collection('/db/resources/commons/WSC/biodb');
declare variable $bib := collection('/db/resources/commons/WSC/bibdb');
(:adjust as necessary:)
declare variable $creator := "Duncan Paterson";
declare variable $person := $bio/tei:TEI/tei:text/tei:body/tei:listPerson/tei:person;
declare variable $work := $bio/tei:TEI/tei:text/tei:body/tei:listPerson/tei:person//tei:listBibl[@type='participatedWorks'];

(:!!!don't forget to explicitely stop sigma's rendering process on the page where graphs are to be displayed!!!:)

declare function local:bipart($n1 as node()*, $n2 as node()*, $edges as node()*) as item()* {

(:this function returns an undirected bipartite graph. It uses shape attributes for the different types of nodes $persons and $work, edges are drawn between $works that appear as child element of $persons.
    The color scheme is colorblind friendly:)


<gexf xmlns="http://www.gexf.net/1.2draft" xmlns:viz="http://www.gexf.net/1.2draft/viz"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.gexf.net/1.2draft http://www.gexf.net/1.2draft/gexf.xsd"
    version="1.2">
    <meta lastmodifieddate="{fn:current-dateTime()}">
        <creator>{$creator}</creator>
        <description>Full Person-Title graph of WSC</description>
    </meta>
    <graph defaultedgetype="undirected">
        <nodes> 
            { let $person := $bio/tei:TEI/tei:text/tei:body/tei:listPerson/tei:person
            for $n1 in $person 
            (:grab persons and displays their first recorded name:)
            return 
                <node id="{data($n1/@xml:id)}"
                    label="{$n1/tei:persName/tei:persName[1]/text()}">
                    <viz:color r="216" g="179" b="101" a="0.0"/>
                    <viz:shape value="square"/>
                </node>}
            
            { let $work := $bio/tei:TEI/tei:text/tei:body/tei:listPerson/tei:person//tei:listBibl[@type ='participatedWorks']
            for $n2 in $work
            (:grab works and display their chinese title, unfortunatly not all works have an idno element hence change to at $pos statement:)
            return
                <node id="{$n2//tei:idno/text()}" label="{$n2/tei:bibl/tei:title/tei:title[2]/text()}">
                    <viz:color r="90" g="180" b="172" a="0.0"/>
                    <viz:shape value="triangle"/>
                </node>} 
        </nodes>
        <edges> 
            {for $e in $work,
                $i in (0 to count($work))
            return 
                <edge id="{$i}" source="{$e/../tei:person@xml:id/text()}" target="{$e/tei:idno/text()}"/>}
        </edges>
    </graph>
</gexf>
};

let $edges := $work

return local:bipart($person, $work, $edges)
(:    <edge id="blah" source="{$e[parent::tei:person]}" target="{$e//tei:idno/text()}"/>:)

