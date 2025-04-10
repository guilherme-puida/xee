<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <!-- PURPOSE:  Test attribute default-mode (unnamed mode) on xsl:if element. -->
    <xsl:template match="/">
        <out>
            <xsl:if test="//@test" default-mode="#unnamed">
                <xsl:apply-templates select="doc/a"/>
            </xsl:if>        
        </out>
    </xsl:template>
    
    <xsl:template match="a" mode="a">
        <xsl:text>mode-a:</xsl:text>
        <xsl:value-of select="."/>
    </xsl:template>
    
    <xsl:template match="a">
        <xsl:text>no-mode:</xsl:text>
        <xsl:value-of select="."/>
    </xsl:template>
    
</xsl:stylesheet>
