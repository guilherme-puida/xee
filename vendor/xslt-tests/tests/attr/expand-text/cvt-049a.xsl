<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    
    <xsl:param name="Hello">Goodbye</xsl:param>
    <xsl:param name="World">Mars</xsl:param>
    
    <xsl:template name="main">
        <out>{$Hello} {$World}!</out>
    </xsl:template>
    
</xsl:stylesheet>
