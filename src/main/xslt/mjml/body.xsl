<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-body`.

  `mj-body` contains everything related to the content of your email.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<xsl:template match="mjml/mj-body"  mode="mjml">
<body>
  <xsl:if test="mj-container/@background-color">
    <xsl:attribute name="style">background:<xsl:value-of select="@background-color"/></xsl:attribute>
  </xsl:if>
  <xsl:apply-templates mode="mjml"/>
</body>
</xsl:template>

</xsl:stylesheet>
