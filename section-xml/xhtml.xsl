<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet 
version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml"
>

  <xsl:output 
  method="xml" 
  indent="yes" 
  omit-xml-declaration="yes"
  doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" 
  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" />

  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="/Doc/Header/Title" /></title>
      </head>
      <body>
        <xsl:apply-templates select="/Doc/Main" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Main">
    <xsl:apply-templates />
  </xsl:template>
  
  <xsl:template match="Para">
    <p><xsl:apply-templates /></p>
  </xsl:template>

  <xsl:template match="hr">
    <hr />
  </xsl:template>

</xsl:stylesheet>