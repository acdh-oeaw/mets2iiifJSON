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
    
    <xsl:import href="template_imports_V2.1.1/metadata_manifest.xsl"/>
    <xsl:import href="template_imports_V2.1.1/metadata_project.xsl"/>
    <xsl:import href="template_imports_V2.1.1/thumbnail.xsl"/>
    <xsl:import href="template_imports_V2.1.1/technicals.xsl"/>
    <xsl:import href="template_imports_V2.1.1/logo.xsl"/>
    <xsl:import href="template_imports_V2.1.1/licence.xsl"/>
    <xsl:import href="template_imports_V2.1.1/sequences.xsl"/>
    <xsl:import href="template_imports_V2.1.1/structures.xsl"/>
    <xsl:param name="baseURI">https://raw.githubusercontent.com/acdh-oeaw/mets2iiifJSON/master/json/PresentationAPI_V2.1.1</xsl:param>
    <xsl:template match="/">
        <xsl:text>{</xsl:text>
        
        <!--  ####### Manifest metadata ####### -->
        <xsl:call-template name="metadata_manifest">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### Project metadata ####### -->
        <xsl:call-template name="metadata_project"/>
        <xsl:text>,</xsl:text>
        
        <!--  ####### thumbnail ####### -->
        <xsl:call-template name="thumbnail"/>
        <xsl:text>,</xsl:text>
        
        <!--  ####### technicals ####### -->
        <xsl:call-template name="technicals"/>
        <xsl:text>,</xsl:text>
        
        <!--  ####### technicals ####### -->
        <xsl:call-template name="logo"/>
        <xsl:text>,</xsl:text>
        
        <!--  ####### licence ####### -->
        <xsl:call-template name="licence"/>
        <xsl:text>,</xsl:text>
        
        <!--  ####### canvas items ####### -->
        <xsl:call-template name="canvases">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### structure ####### -->
        <xsl:call-template name="structures">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        
        <xsl:text>}</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>