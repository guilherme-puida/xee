<xsl:package 
  name="http://www.w3.org/xslt30tests/override-301"
  package-version="1.0.1"
  version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs">
  
  <xsl:use-package
    name="http://www.w3.org/xslt30tests/override-base-301"
    package-version="1.0.0">
  
    <xsl:override>
  
      <xsl:attribute-set name="as-public" visibility="public">
        <xsl:attribute name="pub1" select="'pub1o'"/>
        <xsl:attribute name="pub2" select="'pub2o'"/>
      </xsl:attribute-set>
    
      <xsl:attribute-set name="as-abstract" visibility="public">
        <xsl:attribute name="abs1" select="'abs1o'"/>
        <xsl:attribute name="abs2" select="'abs2o'"/>
      </xsl:attribute-set>
      
    </xsl:override>  
    
  </xsl:use-package>
  
  
   
    <xsl:template name="main" visibility="public">
      <out>
        <x xsl:use-attribute-sets="as-public"/>
        <y xsl:use-attribute-sets="as-abstract"/>
        <z xsl:use-attribute-sets="as-final"/>
      </out>
    </xsl:template>
    
 
  
</xsl:package>   