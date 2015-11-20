xquery version "3.0";

declare namespace mods="http://www.loc.gov/mods/v3";
declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace xlink="http://www.w3.org/1999/xlink";

import module namespace xmldb="http://exist-db.org/xquery/xmldb";

declare default element namespace "http://www.tei-c.org/ns/1.0";

declare variable $termdb := collection('/db/apps/wsc-data/termdb/')//tei:body;

declare function local:find_IDC($n as node()*) as item()* {

    for $n in $termdb//tei:orth[contains(., "□")]
    return $n/../..
};

declare function local:IDC_head($n as node()*) as item()* {

    for $n in $termdb//tei:orth[contains(., "□")]
    return
        <glyph>
            <glyphName>unknown variant</glyphName>
            {if ($n/../tei:note = '')
            then()
            else(<charProp>
                {$n/../tei:note/text()}
            </charProp>)}
        </glyph>    
};
    
let $collection := "/db/apps/wsc-data/modules/termdb"
let $filename := "IDC_candidates.xml"

return
    xmldb:store($collection, $filename, 
    <TEI>
        <teiHeader>
            <fileDesc>
                <titleStmt>
                    <title>IDC_candidates</title>
                </titleStmt>
                <publicationStmt>
                    <p>private use</p>
                </publicationStmt>
            <sourceDesc>
                <p>funky characters from termdb</p>
            </sourceDesc>
          </fileDesc>
            <encodingDesc>
                <charDecl>
                    {local:IDC_head($termdb)}
                </charDecl>
            </encodingDesc>  
        </teiHeader>
      <text>
          <body>
             {local:find_IDC($termdb)}
          </body>
      </text>
    </TEI>)

