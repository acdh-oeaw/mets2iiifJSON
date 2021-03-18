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
    
    <xsl:template name="annotations">
        <xsl:param name="baseURI"/>
        <xsl:text>"annotations": [</xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:text>"id": "</xsl:text><xsl:value-of select="concat($baseURI,'/manifest/1')"/><xsl:text>",</xsl:text>
        <xsl:text>"type": "AnnotationPage",</xsl:text>
        <xsl:text>"items": [</xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:text>"id": "</xsl:text><xsl:value-of select="concat($baseURI,'/manifest/a1')"/><xsl:text>",</xsl:text>
        <xsl:text>"type": "Annotation",</xsl:text>
        <xsl:text>"motivation": "commenting",</xsl:text>
        <xsl:text>"body":</xsl:text>            
        <!-- ************* SUB OBJECTS ************** -->
        <xsl:text>{</xsl:text>
        <xsl:text>"type": "TextualBody",</xsl:text>
        <xsl:text>"language": "en",</xsl:text>
        <xsl:text>"value": "Manifest to convert mets/xml to IIIF"</xsl:text>
        <xsl:text>},</xsl:text><!-- body -->
                            
        <xsl:text>"target": "</xsl:text><xsl:value-of select="concat($baseURI,'/manifest')"/><xsl:text>"</xsl:text>
        <xsl:text>}</xsl:text><!-- images -->
        <xsl:text>]</xsl:text><!-- images -->
        
        <xsl:text>}</xsl:text><!-- items -->
        <xsl:text>]</xsl:text><!-- items -->
    </xsl:template>
    
</xsl:stylesheet>