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
    
    <xsl:template name="homepage">
        <xsl:text>"homepage":[</xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:text>"id": "</xsl:text><xsl:value-of select="//dv:presentation"/><xsl:text>",</xsl:text>
        <xsl:text>"type": "Text",</xsl:text>
        <xsl:text>"label": { "de": ["</xsl:text><xsl:value-of select="//tei:titleStmt/tei:title"/><xsl:text>"] },</xsl:text>
        <xsl:text>"format": "text/html"</xsl:text>
        <xsl:text>}</xsl:text>
        <xsl:text>]</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>