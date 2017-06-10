<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-container`.

  Parent: `body`
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<xsl:variable name="container-attributes">
  <attributes width="600px" background-color="" inherited="width"/>
</xsl:variable>

<xsl:template match="mj-container"  mode="mjml">
<div>
  <xsl:if test="@background-color">
    <xsl:attribute name="style">background-color: <xsl:value-of select="@background-color"/></xsl:attribute>
  </xsl:if>
  <xsl:apply-templates mode="mjml"/>
</div>
</xsl:template>

</xsl:stylesheet>
