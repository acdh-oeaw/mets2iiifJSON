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
    
    <xsl:template name="canvases">
        <xsl:param name="baseURI"/>
        <xsl:variable name="CONTENTIDS" select="//mets:structMap[@TYPE='LOGICAL']/mets:div[@TYPE='manuscript']/@CONTENTIDS"/>     
        
        <xsl:text>"sequences": [</xsl:text>
        <xsl:text>{</xsl:text>
        <xsl:text>"@id": "</xsl:text><xsl:value-of select="concat($baseURI, '/sequence/normal')"/><xsl:text>",</xsl:text>
        <xsl:text>"@type": "sc:Sequence",</xsl:text>
        <xsl:text>"label": "Current Page Order",</xsl:text>
        <xsl:text>"viewingDirection": "left-to-right",</xsl:text>
        <xsl:text>"viewingHint": "paged",</xsl:text>
        <xsl:text>"canvases": [</xsl:text>
        <xsl:for-each select="//mets:div[@TYPE='page']"> 
            <xsl:variable name="oderlabel" select="concat(substring-after(@ID,'PHYS_'),' (',@ORDERLABEL,')')"/>         
            <xsl:text>{</xsl:text>
            <!-- '''''''''''' URL needs to be verified '''''''''''''' --> 
            <xsl:text>"@id": "</xsl:text><xsl:value-of select="concat($baseURI,'/canvas/',@TYPE,@ORDER)"/><xsl:text>",</xsl:text>
            <xsl:text>"@type": "sc:Canvas",</xsl:text>          
            <xsl:text>"label": "</xsl:text><xsl:value-of select="$oderlabel"/><xsl:text>",</xsl:text>
            <xsl:text>"height": 2369,</xsl:text>
            <xsl:text>"width": 2000,</xsl:text>
            <xsl:text>"images": [</xsl:text>
            <xsl:text>{</xsl:text>
            <xsl:text>"@id": "</xsl:text><xsl:value-of select="concat($baseURI,'/annotation/',@TYPE,@ORDER)"/><xsl:text>",</xsl:text>
            <xsl:text>"@type": "oa:Annotation",</xsl:text>
            <xsl:text>"motivation": "sc:painting",</xsl:text>
            <xsl:text>"resource":</xsl:text>            
            <!-- ************* SUB OBJECTS ************** -->
            <xsl:for-each select=".">
                <xsl:text>{</xsl:text>
                <xsl:text>"@id": "</xsl:text>
                <xsl:variable name="FILEID" select="./mets:fptr[4]/data(@FILEID)"/>
                <xsl:variable name="file_ID" select="//mets:file[@ID = $FILEID]"/>
                <xsl:value-of select="$file_ID/mets:FLocat/@xlink:href"/><xsl:text>",</xsl:text>
                <xsl:text>"@type": "dctypes:Image",</xsl:text>
                <xsl:text>"format": "</xsl:text><xsl:value-of select="$file_ID/@MIMETYPE"/><xsl:text>",</xsl:text>
                <xsl:text>"height": 2369,</xsl:text>
                <xsl:text>"width": 2000</xsl:text>
                <xsl:text>},</xsl:text><!-- resource -->
            </xsl:for-each>                    
            <xsl:text>"on": "</xsl:text><xsl:value-of select="concat($baseURI,'/canvas/',@TYPE,@ORDER)"/><xsl:text>"</xsl:text>
            <xsl:text>}</xsl:text><!-- images -->
            <xsl:text>],</xsl:text><!-- images -->
            <xsl:text>"otherContent": [</xsl:text>
            <xsl:text>{</xsl:text>
            <xsl:text>"@id": "</xsl:text><xsl:value-of select="concat($baseURI,'/list/',@TYPE,@ORDER)"/><xsl:text>",</xsl:text>
            <xsl:text>"@type": "sc:AnnotationList"</xsl:text>,
            <xsl:text>"within": "</xsl:text><xsl:value-of select="concat($baseURI,'/layer/',@TYPE,@ORDER)"/><xsl:text>"</xsl:text>
            <xsl:text>}</xsl:text>
            <xsl:text>]</xsl:text>
            <xsl:text>}</xsl:text><!-- canvases -->
            <xsl:if test="position() != last()">
                <xsl:text>,</xsl:text>
            </xsl:if>
        </xsl:for-each> 
        <xsl:text>]</xsl:text><!-- canvases -->
        <xsl:text>}</xsl:text><!-- seqeunces -->        
        <xsl:text>]</xsl:text><!-- seqeunces -->        
    </xsl:template>
    
</xsl:stylesheet>