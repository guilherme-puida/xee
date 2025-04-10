<?xml version="1.0" encoding="UTF-8"?>
<!--It is a non-recoverable dynamic
                        error to evaluate the xsl:result-document
                     instruction in temporary output
                        state.-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:my="http://my.com/"
                version="2.0">

<?error XTDE1480?>

  <xsl:param name="p" select="'your:qname'"/>

  <xsl:template name="main">
    
      <out> 
         <xsl:variable name="t">       
            <xsl:result-document href="temp.out">
               <apple/>
            </xsl:result-document>
         </xsl:variable>
         <xsl:copy-of select="$t"/>
      </out>
  </xsl:template>
  



</xsl:stylesheet>
