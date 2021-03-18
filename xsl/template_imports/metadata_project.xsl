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
    
    <xsl:template name="metadata_project">
        <xsl:text>"label": {"none": [ "</xsl:text><xsl:value-of select="//tei:titleStmt/tei:title"/><xsl:text>"]},</xsl:text>
        <xsl:text>"metadata":</xsl:text>
        <xsl:text>[</xsl:text>
        
        <xsl:text>{</xsl:text>
        <xsl:text>"label": { "de": ["Zusammengestellt"]},</xsl:text>
        <xsl:text>"value": {"none": ["</xsl:text><xsl:value-of select="//tei:titleStmt/tei:respStmt/tei:name[@type='person']"/><xsl:text>"]}</xsl:text>
        <xsl:text>},</xsl:text>
        
        <xsl:text>{</xsl:text>
        <xsl:text>"label": {"de": ["Publiziert"]},</xsl:text>
        <xsl:text>"value": { "none": ["</xsl:text><xsl:value-of select="concat(//tei:publisher/tei:name,', ',//tei:publicationStmt/tei:date[@type='digitised']/@when)"/><xsl:text>"]}</xsl:text>
        <xsl:text>},</xsl:text>
        
        <xsl:text>{</xsl:text>
        <xsl:text>"label": {"de": ["IIIF Manifest konforme Kodierung"]},</xsl:text>
        <xsl:text>"value": {"none": ["Daniel Stoxreiter"]}</xsl:text>
        <xsl:text>},</xsl:text>
        
        <xsl:text>{</xsl:text>
        <xsl:text>"label": {"de": ["Quelle"]},</xsl:text>
        <xsl:variable name="title" select="//tei:sourceDesc/tei:msDesc/tei:head/tei:title[@xml:lang='de']"/>
        <xsl:variable name="date" select="//tei:sourceDesc/tei:msDesc/tei:head/tei:origDate"/>
        <xsl:variable name="place" select="//tei:sourceDesc/tei:msDesc/tei:head/tei:origPlace"/>
        <xsl:text>"value": {"de": ["</xsl:text><xsl:value-of select="concat($place,', ',$title,', ',$date)"/><xsl:text>"]}</xsl:text>
        <xsl:text>}</xsl:text>
        
        <xsl:text>],</xsl:text><!-- closing tag metadata --> 
        
        <xsl:text>"summary": {"de": ["</xsl:text><xsl:value-of select="concat(//tei:titleStmt/tei:title,' zusammengestellt von ',//tei:titleStmt/tei:respStmt/tei:name[@type='person'],', und publiziert von ',concat(//tei:publisher/tei:name,', ',//tei:publicationStmt/tei:date[@type='digitised']/@when))"/><xsl:text>"]}</xsl:text>

    </xsl:template>
    
</xsl:stylesheet>