<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-wrapper`.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<xsl:template match="mj-wrapper" mode="mjml">
<xsl:comment>[if mso | IE]>
  &lt;table role="presentation" border="0" cellpadding="0" cellspacing="0" width="600" align="center" style="width:600px;">
    &lt;tr>
      &lt;td style="line-height:0px;font-size:0px;mso-line-height-rule:exactly;">
  &lt;![endif]</xsl:comment>
<div style="margin:0px auto;max-width:600px;">
  <table role="presentation" cellpadding="0" cellspacing="0" style="font-size:0px;width:100%;" align="center" border="0">
    <tbody>
      <tr>
        <td style="text-align:center;vertical-align:top;direction:ltr;font-size:0px;padding:20px 0px;">
          <!-- TODO Handle attributes -->
          <xsl:apply-templates mode="mjml"/>
        </td>
      </tr>
    </tbody>
  </table>
</div>
<xsl:comment>[if mso | IE]>
  &lt;/td>&lt;/tr>&lt;/table>
  &lt;![endif]</xsl:comment>
</xsl:template>

</xsl:stylesheet>
