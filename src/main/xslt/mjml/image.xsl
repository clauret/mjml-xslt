<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-image`.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<!-- 
padding px  supports up to 4 parameters 10px 25px
padding-top px  top offset  n/a
padding-bottom  px  bottom offset n/a
padding-left  px  left offset n/a
padding-right px  right offset  n/a
container-background-color  color inner element background color  n/a
border  string  css border definition none
border-radius px  border radius n/a
width px  image width 100%
height  px  image height  auto
src url image source  n/a
href  url link to redirect to on click  n/a
rel string  specify the rel attribute n/a
alt string  image description n/a
align position  image alignment center
title string  tooltip & accessibility n/a
css-class string  HTML Element Class Name n/a
 -->

<xsl:template match="mj-image" mode="mjml">
<tr>
  <td style="width:{@width}px;">
    <img alt="{@alt}" title="{@title}" height="auto" src="{@src}" 
       style="border:none;border-radius:0px;display:block;outline:none;text-decoration:none;width:100%;height:auto;"
      width="{@width}"/>
  </td>
</tr>
</xsl:template>

</xsl:stylesheet>
