<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-text`.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<!-- 
color color text color  #000000
font-family string  font  Ubuntu, Helvetica, Arial, sans-serif
font-size px  text size 13px
font-style  string  normal/italic/oblique n/a
font-weight number  text thickness  n/a
line-height px  space between the lines 22px
letter-spacing  px  letter spacing  none
height  px  The height of the element n/a
text-decoration string  underline/overline/line-through/none  n/a
text-transform  string  uppercase/lowercase/capitalize  n/a
align string  left/right/center left
container-background-color  color inner element background color  n/a
padding px  supports up to 4 parameters 10px 25px
padding-top px  top offset  n/a
padding-bottom  px  bottom offset n/a
padding-left  px  left offset n/a
padding-right px  right offset  n/a
css-class string  HTML Element Class Name n/a
 -->


<xsl:template match="mj-text" mode="mjml">
<tr>
  <td style="word-wrap:break-word;font-size:0px;padding:10px 25px;" align="left">
    <div style="cursor:auto;color:#ff0000;font-family:Ubuntu, Helvetica, Arial, sans-serif;font-size:13px;line-height:22px;text-align:left;">
      <xsl:copy-of select="*|text()"/>
    </div>
  </td>
</tr>
</xsl:template>

</xsl:stylesheet>
