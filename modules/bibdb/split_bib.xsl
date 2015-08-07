<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:mods="http://www.loc.gov/mods/v3"
    exclude-result-prefixes="xs" 
    version="2.0">
    
    <xsl:template match="/">
        <xsl:for-each select="list/mods:mods">
            <xsl:result-document method="xml" indent="yes" omit-xml-declaration="yes" href="{./@ID}.xml">

                    <xsl:copy-of select="." />
        
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>