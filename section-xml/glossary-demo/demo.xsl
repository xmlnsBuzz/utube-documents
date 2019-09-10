<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
      <xsl:comment>content start</xsl:comment>
      <p><xsl:apply-templates select="/Glossary/Category" mode="bookmark" /></p>
      <xsl:apply-templates select="/Glossary/Category" mode="main" />
      <xsl:comment>content end</xsl:comment>
  </xsl:template>

  <xsl:template match="Category" mode="bookmark">
  <a href="#{@Letter}" style="font:bold 11px verdana;"><xsl:text>  </xsl:text><xsl:value-of select="@Letter" /><xsl:text>  </xsl:text> </a>
  </xsl:template>
  
  <xsl:template match="Category" mode="main">
    <a name="{@Letter}" href="#"><h2 style="color:0000cd;background:#dfdfdf;padding:5px;" onfocus="this.style.color='red';" onblur="this.style.color='#0000cd';" title="Go to Top"><xsl:value-of select="@Letter" /></h2></a>
    <dl>
      <xsl:for-each select="Terms">
        <xsl:apply-templates />
      </xsl:for-each>
    </dl>
  </xsl:template>
  
  <xsl:template match="Terms">
    <xsl:apply-templates select="Subject" />
    <xsl:apply-templates select="Description" />
  </xsl:template>
  
  <xsl:template match="Subject">
    <dt>
      <em><xsl:value-of select="." /></em>
    </dt>
  </xsl:template> 
  
  <xsl:template match="Description">
    <dd>
      <xsl:for-each select=".">
        <xsl:apply-templates />
      </xsl:for-each>
    </dd>
  </xsl:template>
  
  <xsl:template match="b">
    <strong>
      <xsl:apply-templates />
    </strong>
  </xsl:template>
  
  <xsl:template match="i">
    <em>
      <xsl:apply-templates />
    </em>
  </xsl:template>

</xsl:stylesheet>