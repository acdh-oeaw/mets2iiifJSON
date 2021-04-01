<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:mets="http://www.loc.gov/METS/"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:dv="http://dfg-viewer.de"
    xmlns:oai_mets="http://www.openarchives.org/OAI/2.0/"
    xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:import href="image-api.xsl"/>
    <xsl:param name="baseURI">
        <xsl:value-of select="replace(//dv:presentation,'/start.htm','')"/>
    </xsl:param>
    
    <xsl:template match="/">
        <xsl:text>{</xsl:text>
        
        <!--  ####### Manifest metadata ####### -->
        <xsl:call-template name="image-api">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>

        <xsl:text>}</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>