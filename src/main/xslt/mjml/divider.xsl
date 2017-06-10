<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-divider`.

  Parents allowed: `mj-column` or `mj-hero-content`.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<xsl:variable name="divider-attributes">
<attributes
  border-color="#000000"
  border-style="solid"
  border-width="4px"
  width="100%"
  container-background-color=""
  padding="10px 25px"
  padding-top=""
  padding-bottom=""
  padding-left=""
  padding-right=""/>
</xsl:variable>


<xsl:template match="mj-divider" mode="mjml">
<!-- Compute width -->
<xsl:comment>[if mso | IE]>
  &lt;table role="presentation" border="0" cellpadding="0" cellspacing="0" width="600" align="center" style="width:600px;">
    &lt;tr>
      &lt;td style="line-height:0px;font-size:0px;mso-line-height-rule:exactly;">
  &lt;![endif]</xsl:comment>
<p style="font-size:1px;margin:0px auto;border-top:4px solid #000000;width:100%;"></p>
<xsl:comment>[if mso | IE]><table role="presentation" align="center" border="0" cellpadding="0" cellspacing="0" style="font-size:1px;margin:0px auto;border-top:4px solid #000000;width:100%;" width="600"><tr><td style="height:0;line-height:0;"> </td></tr></table>&lt;![endif]</xsl:comment>
<xsl:comment>[if mso | IE]>
  &lt;/td>&lt;/tr>&lt;/table>
  &lt;![endif]</xsl:comment>
</xsl:template>

</xsl:stylesheet>
