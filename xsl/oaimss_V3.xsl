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
    
    <xsl:import href="template_imports_V3/metadata_manifest.xsl"/>
    <xsl:import href="template_imports_V3/metadata_project.xsl"/>
    <xsl:import href="template_imports_V3/thumbnail.xsl"/>
    <xsl:import href="template_imports_V3/technicals.xsl"/>
    <xsl:import href="template_imports_V3/licence.xsl"/>
    <xsl:import href="template_imports_V3/provider.xsl"/>
    <xsl:import href="template_imports_V3/homepage.xsl"/>
    <xsl:import href="template_imports_V3/service.xsl"/>
    <xsl:import href="template_imports_V3/rendering.xsl"/>
    <xsl:import href="template_imports_V3/start.xsl"/>
    <xsl:import href="template_imports_V3/services.xsl"/>
    <xsl:import href="template_imports_V3/items.xsl"/>
    <xsl:import href="template_imports_V3/structures.xsl"/>
    <xsl:import href="template_imports_V3/annotations.xsl"/>
    <xsl:param name="baseURI">https://iiifpresentation.acdh.oeaw.ac.at/margins</xsl:param>
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
        <xsl:call-template name="thumbnail">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### technicals ####### -->
        <xsl:call-template name="technicals"/>
        <xsl:text>,</xsl:text>
        
        <!--  ####### licence ####### -->
        <xsl:call-template name="licence"/>
        <xsl:text>,</xsl:text>
        
        <!--  ####### provider ####### -->
        <xsl:call-template name="provider">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### homepage ####### -->
        <xsl:call-template name="homepage"/>
        <xsl:text>,</xsl:text>
        
<!--        <!-\-  ####### service ####### -\->
        <xsl:call-template name="service">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>-->
        
<!--        <!-\-  ####### rendering ####### -\->
        <xsl:call-template name="rendering"/>
        <xsl:text>,</xsl:text>-->
        
        <!--  ####### start ####### -->
        <xsl:call-template name="start">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
<!--        <!-\-  ####### services ####### -\->
        <xsl:call-template name="services">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>-->
        
        <!--  ####### canvas items ####### -->
        <xsl:call-template name="canvases">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### structure ####### -->
        <xsl:call-template name="structures">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        <xsl:text>,</xsl:text>
        
        <!--  ####### annotations ####### -->
        <xsl:call-template name="annotations">
            <xsl:with-param name="baseURI" select="$baseURI"/>
        </xsl:call-template>
        
        <xsl:text>}</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>