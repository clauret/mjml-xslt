<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-include`.

  The `mj-include` element allows you to include external mjml files to build your email template.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<xsl:template match="mj-include[@path]" mode="mjml">
  <xsl:variable name="include" select="document(@path)"/>
  <xsl:apply-templates select="$include" mode="mjml"/>
</xsl:template>

<!-- Report an error if path attribute is missing -->
<xsl:template match="mj-include[not(@path)]" mode="mjml">
  <xsl:message>Include must have a `path` attribute.</xsl:message>
</xsl:template>

</xsl:stylesheet>
