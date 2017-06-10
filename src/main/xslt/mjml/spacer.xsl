<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-divider`.

  Parents allowed: `mj-column` or `mj-hero-content`
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<xsl:variable name="spacer-attributes" as="element(attributes)">
  <attributes height="20px"/>
</xsl:variable>


<xsl:template match="mj-spacer" mode="mjml">
<xsl:variable name="height" select="if (@height) then @height else $spacer-attributes/@height"/>
<tr>
  <td style="word-wrap:break-word;font-size:0px;">
    <div style="font-size:1px;line-height:{$height};white-space:nowrap;">&#xa0;</div>
  </td>
</tr>
</xsl:template>

</xsl:stylesheet>
