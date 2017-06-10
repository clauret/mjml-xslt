<?xml version="1.0" encoding="UTF-8"?>
<!--
  Main template for MJML
-->
<xsl:stylesheet version="2.0"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:f="https://tyenki.net/mjml"
                exclude-result-prefixes="#all">

<!-- Generate Emails as indented XHTML documents -->
<xsl:output method="xhtml" media-type="application/html+xml" indent="yes" name="email" omit-xml-declaration="yes"/>

<xsl:include href="mjml/accordion.xsl"/>
<xsl:include href="mjml/body.xsl"/>
<xsl:include href="mjml/button.xsl"/>
<xsl:include href="mjml/carousel.xsl"/>
<xsl:include href="mjml/column.xsl"/>
<xsl:include href="mjml/container.xsl"/>
<xsl:include href="mjml/divider.xsl"/>
<xsl:include href="mjml/group.xsl"/>
<xsl:include href="mjml/head.xsl"/>
<xsl:include href="mjml/hero.xsl"/>
<xsl:include href="mjml/image.xsl"/>
<xsl:include href="mjml/include.xsl"/>
<xsl:include href="mjml/location.xsl"/>
<xsl:include href="mjml/navbar.xsl"/>
<xsl:include href="mjml/raw.xsl"/>
<xsl:include href="mjml/section.xsl"/>
<xsl:include href="mjml/social.xsl"/>
<xsl:include href="mjml/spacer.xsl"/>
<xsl:include href="mjml/table.xsl"/>
<xsl:include href="mjml/text.xsl"/>
<xsl:include href="mjml/wrapper.xsl"/>

<!--
  Main template called in all cases.
-->
<xsl:template match="/">
  <xsl:apply-templates select="mjml" mode="mjml"/>
  <xsl:if test="not(mjml)">
    <xsl:message>MJML Must start with `mjml` element.</xsl:message>
  </xsl:if>
</xsl:template>

<!--
  A MJML document starts with a `<mjml>` tag, it can contain only `mj-head` and `mj-body` tags.

  Both have the same purpose of head and body in a HTML document.
-->
<xsl:template match="mjml" mode="mjml">
<!-- Display the HTML Doctype -->
<xsl:text disable-output-escaping="yes"><![CDATA[<!doctype html>
]]></xsl:text>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
  <xsl:if test="not(mj-head)">
    <xsl:call-template name="mj-head"/>
  </xsl:if>
  <xsl:apply-templates select="mj-head" mode="mjml"/>
  <xsl:apply-templates select="mj-body" mode="mjml"/>
</html>
</xsl:template>

</xsl:stylesheet>