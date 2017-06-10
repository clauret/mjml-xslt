<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-section`.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<!-- section:
full-width  string  make the section full-width n/a
border  string  css border format none
border-bottom string  css border format n/a
border-left string  css border format n/a
border-right  string  css border format n/a
border-top  string  css border format n/a
border-radius px  border radius n/a
background-color  color section color n/a
background-url  url background url  n/a
background-repeat string  css background repeat repeat
background-size percent/px  css background size auto
vertical-align  string  css vertical-align  top
text-align  string  css text-align  center
padding px  supports up to 4 parameters 20px 0
padding-top px  section top offset  n/a
padding-bottom  px  section bottom offset n/a
padding-left  px  section left offset n/a
padding-right px  section right offset  n/a
direction string  ltr / rtl ltr
css-class string  HTML Element Class Name n/a
-->




<xsl:template match="mj-section" mode="mjml">
<!-- TODO duplicate code with wrapper -->
<xsl:comment>[if mso | IE]>
  &lt;table role="presentation" border="0" cellpadding="0" cellspacing="0" width="600" align="center" style="width:600px;">
    &lt;tr>
      &lt;td style="line-height:0px;font-size:0px;mso-line-height-rule:exactly;">
  &lt;![endif]</xsl:comment>
<div style="margin:0px auto;max-width:600px;">
  <table role="presentation" cellpadding="0" cellspacing="0" style="font-size:0px;width:100%;background:{@background-color}" align="center" border="0">
    <tbody>
      <tr>
        <td style="text-align:center;vertical-align:top;direction:ltr;font-size:0px;padding:20px 0px;">
          <xsl:choose>
            <xsl:when test="mj-column">
              <xsl:apply-templates select="." mode="mj-column"/>
            </xsl:when>
            <xsl:when test="mj-group">
              <xsl:apply-templates select="." mode="mj-group"/>
            </xsl:when>
          </xsl:choose>
        </td>
      </tr>
    </tbody>
  </table>
</div>
<xsl:comment>[if mso | IE]>
  &lt;/td>&lt;/tr>&lt;/table>
  &lt;![endif]</xsl:comment>
</xsl:template>



<xsl:template match="mj-section" mode="mj-column">
  <xsl:variable name="count" select="count(mj-column)"/>
  <xsl:choose>
    <xsl:when test="$count = 1">
      <xsl:apply-templates select="." mode="mj-column-1"/>
    </xsl:when>
    <xsl:when test="$count = 2">
      <xsl:apply-templates select="." mode="mj-column-2"/>
    </xsl:when>
    <xsl:when test="$count = 3">
      <xsl:apply-templates select="." mode="mj-column-3"/>
    </xsl:when>
    <xsl:when test="$count = 4">
      <xsl:apply-templates select="." mode="mj-column-4"/>
    </xsl:when>
  </xsl:choose>
</xsl:template>


<!--
  Columns must be under a section to be considered.
-->
<xsl:template match="mj-section" mode="mj-column-1">
<xsl:param name="width" select="'600'"/>
<xsl:comment>[if mso | IE]>
&lt;table role="presentation" border="0" cellpadding="0" cellspacing="0">&lt;tr>&lt;td style="vertical-align:top;width:600px;">
&lt;![endif]</xsl:comment>
  <xsl:apply-templates select="mj-column" mode="mj-column">
    <xsl:with-param name="count" select="1"/>
  </xsl:apply-templates>
  <xsl:comment>[if mso | IE]>
&lt;/td>&lt;/tr>&lt;/table>
&lt;![endif]</xsl:comment>
</xsl:template>

<!--
  Columns must be under a section to be considered.
-->
<xsl:template match="mj-section" mode="mj-column-2">
<xsl:param name="width" select="'600'"/>
<xsl:comment>[if mso | IE]>
&lt;table role="presentation" border="0" cellpadding="0" cellspacing="0">&lt;tr>&lt;td style="vertical-align:top;width:300px;">
&lt;![endif]</xsl:comment>
  <xsl:apply-templates select="mj-column[1]" mode="mj-column">
    <xsl:with-param name="count" select="2"/>
  </xsl:apply-templates>
  <xsl:comment>[if mso | IE]>
      &lt;/td>&lt;td style="vertical-align:top;width:300px;">
      &lt;![endif]</xsl:comment>
  <xsl:apply-templates select="mj-column[2]" mode="mj-column">
    <xsl:with-param name="count" select="2"/>
  </xsl:apply-templates>
  <xsl:comment>[if mso | IE]>
&lt;/td>&lt;/tr>&lt;/table>
&lt;![endif]</xsl:comment>
</xsl:template>

<!--
  Columns must be under a section to be considered.
-->
<xsl:template match="mj-section" mode="mj-column-3">
<xsl:param name="width" select="'600'"/>
<xsl:comment>[if mso | IE]>
&lt;table role="presentation" border="0" cellpadding="0" cellspacing="0">&lt;tr>&lt;td style="vertical-align:top;width:200px;">
&lt;![endif]</xsl:comment>
  <xsl:apply-templates select="mj-column[1]" mode="mj-column">
    <xsl:with-param name="count" select="3"/>
  </xsl:apply-templates>
  <xsl:comment>[if mso | IE]>
      &lt;/td>&lt;td style="vertical-align:top;width:200px;">
      &lt;![endif]</xsl:comment>
  <xsl:apply-templates select="mj-column[2]" mode="mj-column">
    <xsl:with-param name="count" select="3"/>
  </xsl:apply-templates>
  <xsl:comment>[if mso | IE]>
      &lt;/td>&lt;td style="vertical-align:top;width:200px;">
      &lt;![endif]</xsl:comment>
  <xsl:apply-templates select="mj-column[3]" mode="mj-column">
    <xsl:with-param name="count" select="3"/>
  </xsl:apply-templates>
  <xsl:comment>[if mso | IE]>
&lt;/td>&lt;/tr>&lt;/table>
&lt;![endif]</xsl:comment>
</xsl:template>

<!--
  Columns must be under a section to be considered.
-->
<xsl:template match="mj-section" mode="mj-column-4">
<xsl:param name="width" select="'600'"/>
<xsl:comment>[if mso | IE]>
&lt;table role="presentation" border="0" cellpadding="0" cellspacing="0">&lt;tr>&lt;td style="vertical-align:top;width:150px;">
&lt;![endif]</xsl:comment>
  <xsl:apply-templates select="mj-column[1]" mode="mj-column">
    <xsl:with-param name="count" select="4"/>
  </xsl:apply-templates>
  <xsl:comment>[if mso | IE]>
      &lt;/td>&lt;td style="vertical-align:top;width:150px;">
      &lt;![endif]</xsl:comment>
  <xsl:apply-templates select="mj-column[2]" mode="mj-column">
    <xsl:with-param name="count" select="4"/>
  </xsl:apply-templates>
  <xsl:comment>[if mso | IE]>
      &lt;/td>&lt;td style="vertical-align:top;width:150px;">
      &lt;![endif]</xsl:comment>
  <xsl:apply-templates select="mj-column[3]" mode="mj-column">
    <xsl:with-param name="count" select="4"/>
  </xsl:apply-templates>
  <xsl:comment>[if mso | IE]>
      &lt;/td>&lt;td style="vertical-align:top;width:150px;">
      &lt;![endif]</xsl:comment>
  <xsl:apply-templates select="mj-column[4]" mode="mj-column">
    <xsl:with-param name="count" select="4"/>
  </xsl:apply-templates>
  <xsl:comment>[if mso | IE]>
&lt;/td>&lt;/tr>&lt;/table>
&lt;![endif]</xsl:comment>
</xsl:template>















</xsl:stylesheet>
