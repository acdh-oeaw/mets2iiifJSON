<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    
   <xsl:template name="service_item">
        <xsl:param name="baseURI"/>
        <xsl:text>"service": [</xsl:text>
        <xsl:text>{</xsl:text>
        <!-- '''''''''''' URL needs to be verified '''''''''''''' --> 
        <xsl:text>"id": "</xsl:text><xsl:value-of select="concat($baseURI,'/max')"/><xsl:text>",</xsl:text>
        <xsl:text>"type": "ImageService3",</xsl:text>
        <xsl:text>"profile": "level1",</xsl:text>
        
        <!-- ############# authentication service? ############ -->
        <xsl:text>"service": [</xsl:text>
        <xsl:text>{</xsl:text>
        <!-- '''''''''''' URL needs to be verified '''''''''''''' --> 
        <xsl:text>"@id": "</xsl:text><xsl:value-of select="concat($baseURI,'/auth/login')"/><xsl:text>",</xsl:text>
        <xsl:text>"@type": "AuthCookieService1"</xsl:text>
        <xsl:text>}</xsl:text>
        <xsl:text>]</xsl:text>
        
        <xsl:text>}</xsl:text><!-- service -->
        <xsl:text>]</xsl:text><!-- service -->
   </xsl:template>
</xsl:stylesheet>