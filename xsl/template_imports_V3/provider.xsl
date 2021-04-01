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
    
    <xsl:template name="provider">
        <xsl:param name="baseURI"/>
        <xsl:text>"provider": [</xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:text>"id": "</xsl:text><xsl:value-of select="concat(//dv:ownerSiteURL,'category/info/about/')"/><xsl:text>",</xsl:text>
        <xsl:text>"type": "Agent",</xsl:text>
        <xsl:text>"label": {"de": ["</xsl:text><xsl:value-of select="//dv:owner"/><xsl:text>"] },</xsl:text>
        <xsl:text>"homepage": [</xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:text>"id": "</xsl:text><xsl:value-of select="//dv:ownerSiteURL"/><xsl:text>",</xsl:text>
        <xsl:text>"type": "Text",</xsl:text>
        <xsl:text>"label": { "de": ["</xsl:text><xsl:value-of select="//dv:owner"/><xsl:text>"] },</xsl:text>
        <xsl:text>"format": "text/html"</xsl:text>
        <xsl:text>}</xsl:text><!-- homepage -->
        <xsl:text>],</xsl:text><!-- homepage -->
        <xsl:text>"logo": [</xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:text>"id": "</xsl:text><xsl:value-of select="//dv:ownerLogo"/><xsl:text>",</xsl:text>
        <xsl:text>"type": "Image",</xsl:text>
        <xsl:text>"format": "image/gif"</xsl:text>
        <!--<xsl:text>"service": [</xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:text>"id": "</xsl:text><xsl:value-of select="substring-before(//dv:ownerLogo,'/logo')"/><xsl:text>",</xsl:text>
        <xsl:text>"type": "ImageService3",</xsl:text>
        <xsl:text>"profile": "level1"</xsl:text>
        <xsl:text>}</xsl:text><!-\- service -\->
        <xsl:text>]</xsl:text><!-\- service -\->-->  
        <xsl:text>}</xsl:text><!-- logo -->
        <xsl:text>]</xsl:text><!-- logo -->
        <!-- ########## seeAlso dataset schema? ###### -->        
        <xsl:text>}</xsl:text><!-- provider -->
        <xsl:text>]</xsl:text><!-- provider -->
    </xsl:template>
    
</xsl:stylesheet>