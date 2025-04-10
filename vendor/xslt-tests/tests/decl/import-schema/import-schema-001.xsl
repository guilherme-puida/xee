<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
default-validation="preserve">

  <!-- PURPOSE: Test annotating an ID attribute in a temporary tree. -->
  <?spec xslt#annotation-for-constructed-attribute?>
  <?spec xslt#validation-xsl-type?>

<xsl:variable name="tree">
  <e1><xsl:attribute name="id" type="xs:ID">A001</xsl:attribute></e1>
  <e2><xsl:attribute name="id" type="xs:ID">A002</xsl:attribute></e2>
  <e3><xsl:attribute name="id" type="xs:ID">A003</xsl:attribute></e3>
  <e4><xsl:attribute name="id" type="xs:ID">A004</xsl:attribute></e4>
  <e5><xsl:attribute name="id" type="xs:ID">A005</xsl:attribute></e5>
  <e6><xsl:attribute name="id" type="xs:ID">A006</xsl:attribute></e6>
  <e7><xsl:attribute name="id" type="xs:ID">A007</xsl:attribute></e7>
</xsl:variable>            

  <xsl:template match="/">
    <out>
      <xsl:copy-of select="$tree/id('A004')"/>       
    </out>
  </xsl:template>

</xsl:stylesheet>