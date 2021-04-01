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
    
    <xsl:template name="structures">
        <xsl:param name="baseURI"/>
        <!-- ############# MAIN OBJECT ############# -->        
        <xsl:for-each select="//mets:structMap[@TYPE='PHYSICAL']/mets:div[@TYPE='physSequence']">            
            <xsl:text>"structures": [</xsl:text>
            <xsl:text>{</xsl:text>
            
            <!-- '''''''''''' URL needs to be verified '''''''''''''' -->            
            <xsl:text>"@id": "</xsl:text><xsl:value-of select="concat($baseURI,'/canvas/page', substring-after(@ID, 'PHYS_000'))"/><xsl:text>",</xsl:text>
            <!-- '''''''''''' URL needs to be verified '''''''''''''' -->
            
            <xsl:text>"@type": "sc:Range",</xsl:text>
            <xsl:text>"label": "</xsl:text><xsl:value-of select="concat(substring-after(@ID, 'PHYS_'), ' (book cover)')"/><xsl:text>",</xsl:text>                
            <xsl:text>"canvases": [ </xsl:text> 
            
            <!-- ************* SUB OBJECTS ************** -->
            <xsl:for-each select="//mets:structMap[@TYPE='PHYSICAL']/mets:div[@TYPE='physSequence']">      
                <xsl:for-each select="./mets:div[@TYPE='page']">
                    <xsl:variable name="oderlabel" select="concat(substring-after(@ID,'PHYS_'),' (',@ORDERLABEL,')')"/>                   
                    <xsl:text>"</xsl:text><xsl:value-of select="concat($baseURI,'/canvas/',@TYPE,@ORDER)"/><xsl:text>"</xsl:text>
                    <xsl:if test="position() != last()">
                        <xsl:text>,</xsl:text>
                    </xsl:if>
                </xsl:for-each>                
            </xsl:for-each>
            <xsl:text>]</xsl:text><!-- canvases -->            
            <xsl:text>}</xsl:text><!-- structures -->
            <xsl:text>]</xsl:text><!-- structures -->
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>