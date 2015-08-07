<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
    version="2.0">
    
    <xsl:template match="/">
        <xsl:for-each select="tei:TEI//tei:entry">
            <xsl:result-document method="xml" indent="yes" omit-xml-declaration="yes" href="{./@xml:id}.xml">
                <?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"?>
                <?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"?>
                <TEI>
                    <teiHeader>
                        <fileDesc>
                            <titleStmt>
                                <title>Excerp of WSC term data in TEI</title>
                            </titleStmt>
                            <publicationStmt>
                                <p>Cluster of Excellence Asia and Europe in a Global Context</p>
                            </publicationStmt>
                            <sourceDesc>
                                <p>Entry of termdb from  Modern Chinese Scientific Terminologies (WSC)</p>
                            </sourceDesc>
                        </fileDesc>
                    </teiHeader>
                    <text>
                        <body>
                            <xsl:copy-of select="." />
                        </body>
                    </text>
                </TEI>                
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>