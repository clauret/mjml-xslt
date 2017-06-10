<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-location`.
-->
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<!-- Default location attributes -->
<xsl:variable name="location-attributes" as="element(attributes)">
  <attributes color="#3aa7ed"
              font-family="Roboto, sans-serif"
              font-size="18px"
              font-weight="500"
              href="http://maps.google.com/maps?q=(mjAttribute: address)"
              padding="10px 25px"
              img-src="http://i.imgur.com/DPCJHhy.png"/>
</xsl:variable>



<xsl:template match="mj-location" mode="mjml">
<xsl:variable name="color"       select="if (@color)       then @color else $location-attributes/@color"/>
<xsl:variable name="font-family" select="if (@font-family) then @font-family else $location-attributes/@font-family"/>
<xsl:variable name="font-size"   select="if (@font-size)   then @font-size else $location-attributes/@font-size"/>
<xsl:variable name="font-weight" select="if (@font-weight) then @font-weight else $location-attributes/@font-weight"/>
<xsl:variable name="img-src"     select="if (@img-src)     then @img-src else $location-attributes/@img-src"/>
<xsl:variable name="padding"     select="if (@padding)     then @padding else $location-attributes/@padding"/>
<!-- TODO: compute other attributes -->
<table role="presentation" cellpadding="0" cellspacing="0" width="100%" border="0">
  <tbody>
    <tr>
      <td style="word-wrap:break-word;font-size:0px;padding:0px;" align="center">
        <table role="presentation" cellpadding="0" cellspacing="0" style="border-collapse:collapse;border-spacing:0px;" align="center" border="0">
          <tbody>
            <tr>
              <td style="width:NaN;">
                <a href="http://maps.google.com/maps?q={@address}" target="_blank">
                  <img alt="" title="" height="auto" src="{$img-src}" style="border:none;border-radius:0px;display:block;outline:none;text-decoration:none;width:100%;height:auto;" width="NaN"/>
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
    <tr>
      <td style="word-wrap:break-word;font-size:0px;padding:0px;" align="center">
        <div class="" style="cursor:auto;color:#000000;font-family:{$font-family};font-size:{$font-size};font-weight:{$font-weight};line-height:22px;text-align:center;">
          <a href="http://maps.google.com/maps?q={@address}" style="color:{$color};text-decoration:none;" target="_blank">
            <xsl:value-of select="@address"/>
          </a>
        </div>
      </td>
    </tr>
  </tbody>
</table>
</xsl:template>

</xsl:stylesheet>
