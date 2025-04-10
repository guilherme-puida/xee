<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        xmlns:enu="http://schema046.uri/"
        exclude-result-prefixes="xs enu">

<!-- PURPOSE: Test use type attribute on xsl:copy-of, with both element and attribute nodes,
   where the type attribute names a complex type -->
<!-- See spec bug 13001 -->
   
<?spec xslt#shallow-copy?>
<?spec xslt#validation-xsl-type?>

<xsl:import-schema schema-location="schema046.xsd" 
     namespace="http://schema046.uri/"/>
  



  <xsl:template match="/">
    <xsl:variable name="tree">
      <e>xml text</e>
      <f att="html 15 xml"/>
      <xsl:text>text</xsl:text>
    </xsl:variable>
    <out>
      <a>
        <xsl:copy-of select="$tree/f/@att, $tree/e, $tree/text()" type="enu:methodsC"/>
      </a>                                         
    </out>
  </xsl:template>
  
</xsl:stylesheet>