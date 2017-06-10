<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-button`.

  Parents: `mj-column`, `mj-hero-content`
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<!--
  Main template called in all cases.
-->
<xsl:template match="mj-button" mode="mjml">
<table 
  role="presentation" 
  cellpadding="0" 
  cellspacing="0"
  data-legacy-align="{@align}"
  data-legacy-border="0">
  <tbody>
    <tr>
      <td 
        data-legacy-align="center"
        data-legacy-valign="{@vertical-align}"
        data-legacy-bgcolor="{if (@background-color != 'none') then '' else @background-color}">
        <xsl:choose>
          <xsl:when test="@href">
            <a href="{@href}" rel="{@rel}" target="_blank">
              <!-- TODO inner HTML -->
            </a>
          </xsl:when>
          <xsl:otherwise>
            <p>
              <!-- TODO inner HTML -->
            </p>
          </xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </tbody>
</table>
</xsl:template>

</xsl:stylesheet>
