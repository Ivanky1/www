<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
<xsl:output method="html" encoding="windows-1251" />
<xsl:template match="/">
<h1>
<xsl:apply-templates select="/lab6_1/course" />
</h1>
</xsl:template>
<xsl:template match="course[@id='XML']">
<xsl:for-each select="*">
<xsl:value-of select="name()" />
<xsl:text> :  </xsl:text>
<xsl:value-of select="." />

</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
