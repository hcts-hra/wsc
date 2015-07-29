xquery version "3.0";

declare namespace gexf="http://www.gexf.net/1.2draft";
declare namespace viz="http://www.gexf.net/1.2draft/viz";
declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace mods="http://www.loc.gov/mods/v3";


declare default element namespace "http://www.gexf.net/1.2draft";

(:these should be changed to '/db/apps/WSC/biodb | bibdb/' once WSC is fully appified:)
declare variable $bio := collection('/db/resources/commons/WSC/biodb');
declare variable $bib := collection('/db/resources/commons/WSC/bibdb');
(:adjust as necessary:)
declare variable $creator := "Duncan Paterson";

(:!!!don't forget to explicitely stop sigma's graph rendering process on the page where graphs are to be displayed!!!:)

declare function local:bipart($n1 as node()*, $n2 as node()*, $edges as node()*) as item()* {

(:this function returns an undirected bipartite graph. It uses shape attributes for the different types of nodes n1 and n2,  edges are drawn based on the assumption that edges appear as child elements of the parent node. :)


return
    <gexf xmlns="http://www.gexf.net/1.2draft" xmlns:viz="http://www.gexf.net/1.2draft/viz" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.gexf.net/1.2draft http://www.gexf.net/1.2draft/gexf.xsd" version="1.2">
        <meta lastmodifieddate="{fn:current-dateTime()}">
            <creator>{$creator}</creator>
            <description>Bipartite Person-Title network of WSC</description>
        </meta>
        <graph defaultedgetype="undirected">
            {for $n1 in $nodes
            return
                <node id="{$n1/../}" label="{$n1/../}">
                    <viz:color r="216" g="179" b="101" a="0.0"/> 
                    <viz:shape value="square">
                </node> (:id should be index postition in file for faster processing of ints:)
                <node id="{$n2/../}" label="{$n2/../}">
                    <viz:color r="90" g="180" b="172" a="0.0"/>
                    <viz:shape value="triangle">
                </node>
                }
            {for $e in $edges
            return 
                <edge id="{$e/../}" source="" target=""/> (:needs to be contructed recursively and take the values from nodes function earlier? maybe dump the whole index location thing:)
                }
        </graph>
    </gexf>
};

return local:bipart($bio/tei:TEI/tei:text/tei:body/tei:listPerson/tei:person, )
['rgb(216,179,101)','rgb(245,245,245)','rgb(90,180,172)']

