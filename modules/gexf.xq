xquery version "3.0";

declare namespace gexf="http://www.gexf.net/1.2draft";
declare namespace viz="http://www.gexf.net/1.2draft/viz";
declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace mods="http://www.loc.gov/mods/v3";
declare namespace xsi="http://www.w3.org/2001/XMLSchema-instance";

declare default element namespace "http://www.gexf.net/1.2draft";


(:these should be changed to '/db/apps/WSC/biodb | bibdb/' once WSC is fully appified:)
declare variable $bio := doc('/db/data/commons/WSC/biodb/wsc_persons.xml');
declare variable $bib := collection('/db/data/commons/WSC/bibdb');
(:adjust as necessary:)
declare variable $creator := "Duncan Paterson";
declare variable $person := $bio/tei:TEI/tei:text/tei:body/tei:listPerson/tei:person;
declare variable $work := $person/tei:listBibl[@type='participatedWorks']/tei:bibl;

(:!!!don't forget to explicitely stop sigma's rendering process on the page where graphs are to be displayed!!!:)

declare function local:bipart($n1 as node()*, $n2 as node()*) as item()* {

(:this function returns an undirected bipartite graph. It uses shape attributes for the different types of nodes $persons and $work, edges are drawn between $works that appear as child element of $persons.
    The color scheme is colorblind friendly:)


<gexf xmlns:viz="http://www.gexf.net/1.2draft/viz"
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
                    label="{$a/tei:persName[1]/tei:persName[1]/text()}">
                    <viz:color r="216" g="179" b="101" a="1.0"/>
                    <viz:shape value="square"/>
                </node>}
        
            {
            let $titles := for $book in distinct-values($work/tei:ref/@target/string()) 
                        return <title>{$book}</title>       
            for $b at $pos in $titles
            
            (:grab the unique values of work uuids :)
            (:to-do Replace label with title from biodb:)
            return
                <node id="{element counter {$pos}}" label="{$b/@target/string()}">
                    <viz:color r="90" g="180" b="172" a="1.0"/>
                    <viz:shape value="triangle"/>
                </node>
            } 
        </nodes>
        <edges> 
            {for $b at $pos in $n2
            (:draw an edge from every work to its person parent item :)
            return 
                <edge id="{element counter {$pos}}" source="{$b/ancestor::tei:person/@xml:id}" target="{element counter {$pos}}"/>}
        </edges>
    </graph>
</gexf>
};

(:<report>:)
(:    <nodes_total>{count(distinct-values($work/tei:ref/@target/string())) + count($person)}</nodes_total>:)
(:    <edges_total>{count($work)}</edges_total>:)
(:    <unique_works>{count(distinct-values($work/tei:ref/@target/string()))}</unique_works>:)
(:{:)
(:    let $titles := for $book in distinct-values($work/tei:ref/@target/string()) :)
(:            return <title>{$book}</title>:)
(:    for $b at $pos in $titles:)
(:    return:)
(:        $b:)
(:}:)
(:</report>:)




xmldb:store ('/db/apps/MCST/data/graphs/', 'biodb_bipart.gexf', local:bipart($person, $work))

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
