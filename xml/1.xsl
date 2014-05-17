<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output encoding="windows-1251"/>
<xsl:key name="cuars" match="/lab7/item/@city"  use="." />	
	<xsl:template match="/">
		<xsl:for-each select="/lab7/item/@city[generate-id(.) = generate-id(key('cuars', .) )]"	>
<h1>		<xsl:value-of select="." /> </h1>
		
		</xsl:for-each>
		<xsl:for-each select="key('cuars','Петербугр')">
	<h2><xsl:value-of select="../@title" /></h2>		
		</xsl:for-each>
	</xsl:template>		
</xsl:stylesheet>
