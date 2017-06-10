<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-column`.
  
  Possible parents: `mj-section`, `mj-group`, `mj-navbar`
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<!-- 
background-color  string  background color for a column n/a
border  string  css border format none
border-bottom string  css border format n/a
border-left string  css border format n/a
border-right  string  css border format n/a
border-top  string  css border format n/a
border-radius px  border radius n/a
width percent/px  column width  (100 / number of columns in section)%
vertical-align  string  middle/top/bottom top
css-class string  HTML Element Class Name n/a
-->

<xsl:template match="mj-column" mode="mj-column">
<xsl:param name="count" select="1"/>
  <div class="mj-column-per-{100 idiv $count} outlook-group-fix" style="vertical-align:top;display:inline-block;direction:ltr;font-size:13px;text-align:left;width:100%;">
    <table role="presentation" cellpadding="0" cellspacing="0" width="100%" border="0">
      <tbody>
        <xsl:apply-templates mode="mjml"/>
      </tbody>
    </table>
  </div>
</xsl:template>


</xsl:stylesheet>
