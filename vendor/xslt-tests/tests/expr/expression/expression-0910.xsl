<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<!-- Test "for" over a node-set -->
<?spec xpath#id-for-expressions?>

<xsl:template match="/">
  <out>(<xsl:value-of select="for $i in //item return $i/@val" separator=", "/>)</out>
</xsl:template>
 
</xsl:stylesheet>
