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
    
    <xsl:template name="logo">
        <xsl:param name="baseURI"/>
        <xsl:text>"logo":</xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:text>"@id": "</xsl:text><xsl:value-of select="//dv:ownerLogo"/><xsl:text>",</xsl:text>  
        <xsl:text>"type": "Image",</xsl:text>
        <xsl:text>"format": "image/gif"</xsl:text>
        <xsl:text>}</xsl:text><!-- provider -->
    </xsl:template>
    
</xsl:stylesheet>