<?xml version="1.0" encoding="UTF-8"?>
<!--
  Template for the `mj-head`.

  `mj-head` contains everything related to the document such as style and meta elements.
-->
<xsl:stylesheet version="2.0"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<!-- Generate Emails as indented XHTML documents -->
<xsl:output method="xhtml" media-type="application/html+xml" indent="yes" name="email" omit-xml-declaration="yes"/>

<!-- Store attributes in global variable for reuse by functions -->
<xsl:variable name="mj-attributes" select="/mjml/mj-head/mj-attributes"/>

<!--
  Template for building the HTML head.

  This template can be invoked in two ways:
   - if specified by `mj-head` element
   - called directly if there is no `mj-head` element
-->
<xsl:template match="mjml/mj-head" name="mj-head" mode="mjml">
<head xmlns="http://www.w3.org/1999/xhtml">
  <title><xsl:value-of select="if (mj-title) then mj-title else ' '"/></title>
  <xsl:comment>[if !mso]>&lt;!</xsl:comment>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <xsl:comment>&lt;![endif]</xsl:comment>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <xsl:call-template name="mj-head-styles"/>
  <xsl:call-template name="mj-head-styles-mso"/>
  <xsl:apply-templates select="mj-style[not(@inline)]" mode="mj-head"/>
  <!-- If there is a column -->
  <xsl:if test="//mj-column">
<style type="text/css">
@media only screen and (min-width:480px) {
<xsl:for-each-group select="//mj-section[mj-column]" group-by="count(mj-column)">
  .mj-column-per-<xsl:value-of select="100 idiv count(mj-column)"/> {
    width: <xsl:value-of select="100 div count(mj-column)"/>%!important;
  }
</xsl:for-each-group>
}
</style>
  </xsl:if>
</head>
</xsl:template>

<!--
  Additional styles to insert into the head via `mj-style`
-->
<xsl:template match="mj-style" mode="mj-head">
<style xmlns="http://www.w3.org/1999/xhtml" type="text/css">
<xsl:copy-of select="text()"/>
</style>
</xsl:template>

<!-- 
  Font to load from the Web
-->
<xsl:template match="mj-font" mode="mj-head">
  <!-- NB. MJML only outputs if the font name is used -->
  <xsl:comment>[if !mso]>&lt;!</xsl:comment>
  <link href="{@href}" rel="stylesheet" type="text/css"/>
  <style type="text/css">
    @import url(<xsl:value-of select="@href"/>);
  </style>
  <xsl:comment>&lt;![endif]</xsl:comment>
</xsl:template>

<!--
  Returns the styles corresponding to the specified space-separated class names.
-->
<xsl:function name="f:mj-class">
  <xsl:param name="class-names"/>
  <xsl:for-each select="tokenize($class-names, '\s+')"> 
    <xsl:variable name="class" select="."/>
    <xsl:for-each select="$mj-attributes/mj-class[@name=$class]/@*[not(name()='name')]">
      <xsl:value-of select="concat(name(),':',.)"/>
    </xsl:for-each>
    <xsl:for-each select="$mj-attributes/mj-all/@*[not(name()='name')]">
      <xsl:value-of select="concat(name(),':',.)"/>
    </xsl:for-each>
  </xsl:for-each>
</xsl:function>



<!--
  Default built-in CSS
-->
<xsl:template name="mj-head-styles">
<style type="text/css">
#outlook a {
  padding: 0;
}

.ReadMsgBody {
  width: 100%;
}

.ExternalClass {
  width: 100%;
}

.ExternalClass * {
  line-height: 100%;
}

body {
  margin: 0;
  padding: 0;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
}

table,
td {
  border-collapse: collapse;
  mso-table-lspace: 0pt;
  mso-table-rspace: 0pt;
}

img {
  border: 0;
  height: auto;
  line-height: 100%;
  outline: none;
  text-decoration: none;
  -ms-interpolation-mode: bicubic;
}

p {
  display: block;
  margin: 13px 0;
}
</style>
</xsl:template>

<!--
  Additional conditional styles for MSO
-->
<xsl:template name="mj-head-styles-mso">
  <xsl:comment>[if !mso]>&lt;!</xsl:comment>
  <style type="text/css">
    @media only screen and (max-width:480px) {
      @-ms-viewport {
        width: 320px;
      }
      @viewport {
        width: 320px;
      }
    }
  </style>
  <xsl:comment>&lt;![endif]</xsl:comment>
  <xsl:comment>[if mso]>
&lt;xml>
  &lt;o:OfficeDocumentSettings>
    &lt;o:AllowPNG/>
    &lt;o:PixelsPerInch>96&lt;/o:PixelsPerInch>
  &lt;/o:OfficeDocumentSettings>
&lt;/xml>
&lt;![endif]</xsl:comment>
  <xsl:comment>[if lte mso 11]>
<style type="text/css">
  .outlook-group-fix {
    width:100% !important;
  }
</style>
&lt;![endif]</xsl:comment>
</xsl:template>

</xsl:stylesheet>
