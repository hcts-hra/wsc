declare namespace tei="http://www.tei-c.org/ns/1.0";


let $terms := collection('/Users/halalpha/Documents/gits/wsc-data/WSC/termdb/')




return 
<report>
    <Github36>
        <all>{count($terms/tei:TEI/tei:text/tei:body//tei:cit[@type="translation"])}</all>
        <language type="en">
            <total>{count($terms/tei:TEI/tei:text/tei:body//tei:cit[@xml:lang="en"])}</total>
        </language>
        <language type="de">
            <total>{count($terms/tei:TEI/tei:text/tei:body//tei:cit[@xml:lang="de"])}</total>
        </language>
        <language type="ja">
            <total>{count($terms/tei:TEI/tei:text/tei:body//tei:cit[@xml:lang="ja"])}</total>
        </language>
        <language type="fr">
            <total>{count($terms/tei:TEI/tei:text/tei:body//tei:cit[@xml:lang="fr"])}</total>
        </language>
        <sum>{count($terms/tei:TEI/tei:text/tei:body//tei:cit[@type="translation"]) - count($terms/tei:TEI/tei:text/tei:body//tei:cit[@xml:lang="en"]) - count($terms/tei:TEI/tei:text/tei:body//tei:cit[@xml:lang="de"]) }</sum>        
    </Github36>
    <list>{for $n in $terms/tei:TEI/tei:text/tei:body//tei:cit[@xml:lang="de"]
                    order by number(substring($n/ancestor::tei:sense/@n/string(), 4))
                return <sense>{$n/ancestor::tei:sense/@n/string()}</sense>
            }</list>
</report>