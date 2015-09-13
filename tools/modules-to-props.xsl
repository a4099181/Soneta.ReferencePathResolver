<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://schemas.microsoft.com/developer/msbuild/2003">

  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <xsl:element name="Project">
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="Installations">
    <xsl:element name="PropertyGroup">
      <xsl:element name="ReferencePath">
        <xsl:for-each select="Installation">
          <xsl:value-of select="." /><xsl:text>;</xsl:text>
        </xsl:for-each>
      </xsl:element>
    </xsl:element>
  </xsl:template>

</xsl:stylesheet>