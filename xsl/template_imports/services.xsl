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
    
    <xsl:template name="services">
        <xsl:param name="baseURI"/>
        <xsl:text>"services": [</xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:text>"@id": "</xsl:text><xsl:value-of select="concat($baseURI,'/auth/login')"/><xsl:text>",</xsl:text>
        <xsl:text>"@type": "AuthCookieService1",</xsl:text>
        <xsl:text>"label": "Login to WDB",</xsl:text>
        <xsl:text>"profile": "http://iiif.io/api/auth/1/login",</xsl:text>
        <xsl:text>"service": [</xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:text>"@id": "</xsl:text><xsl:value-of select="concat($baseURI,'/auth/token')"/><xsl:text>",</xsl:text>
        <xsl:text>"@type": "AuthTokenService1",</xsl:text>
        <xsl:text>"profile": "http://iiif.io/api/auth/1/token"</xsl:text>
        <xsl:text>}</xsl:text><!-- service -->
        <xsl:text>]</xsl:text><!-- service -->
        <xsl:text>}</xsl:text><!-- services -->
        <xsl:text>]</xsl:text><!-- services -->
    </xsl:template>
    
</xsl:stylesheet>