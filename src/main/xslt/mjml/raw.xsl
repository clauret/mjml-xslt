<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-raw`.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<xsl:template match="mj-raw" mode="mjml">
  <xsl:copy-of select="*|text()"/>
</xsl:template>

</xsl:stylesheet>
