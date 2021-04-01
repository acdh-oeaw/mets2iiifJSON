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
    
    <xsl:template name="image-api">
        <xsl:param name="baseURI"/>
        <xsl:text>"@context": [</xsl:text>
        <xsl:text>"http://iiif.io/api/image/3/context.json"</xsl:text>
        <xsl:text>],</xsl:text><!-- @context -->
        <xsl:text>"id": "</xsl:text><xsl:value-of select="concat($baseURI,'/max')"/><xsl:text>",</xsl:text>
        <xsl:text>"type": "ImageService3",</xsl:text>
        <xsl:text>"protocol": "http://iiif.io/api/image",</xsl:text>
        <xsl:text>"profile": "level1",</xsl:text>
        <xsl:text>"height": 2369,</xsl:text>
        <xsl:text>"width": 2000,</xsl:text>
        <xsl:text>"maxWidth": 2000,</xsl:text>
        <xsl:text>"maxHeight": 2369,</xsl:text>
        <xsl:text>"maxArea": 4000000,</xsl:text>
        <xsl:text>"sizes": [</xsl:text>
        <xsl:text>{"width": 50, "height": 59.225  },</xsl:text>
        <xsl:text>{"width": 400, "height": 473.8  },</xsl:text>
        <xsl:text>{"width": 2000, "height": 2369  }</xsl:text>
        <xsl:text>],</xsl:text><!-- sizes -->
        <xsl:text>"tiles": [</xsl:text>
        <xsl:text>{"width": 512, "scaleFactors": [ 1, 2, 4 ] },</xsl:text>
        <xsl:text>{"width": 1024, "height": 2048, "slaceFactors": [ 8, 16 ]  }</xsl:text>
        <xsl:text>],</xsl:text><!-- sizes -->
        <xsl:text>"rights": "</xsl:text><xsl:value-of select="//tei:availability/tei:licence/@target"/><xsl:text>",</xsl:text>
        <xsl:text>"preferredFormats": "jpeg",</xsl:text>
        <xsl:text>"preferredQualities": "default"</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>