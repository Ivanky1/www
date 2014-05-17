<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" encoding="windows-1251" />
<xsl:template match="/">
	<xsl:for-each-group select="/lab7/item" group-by="@city">
		<ul>
			<li><h1><xsl:value-of select="current-grouping-key()" /></h1></li>
<xsl:for-each select="current-group()">
	<ul>
		<li><xsl:value-of select="@org" /></li>
	</ul>
</xsl:for-each>			

		

		
		</ul>
	</xsl:for-each-group>
</xsl:template>		
</xsl:stylesheet>
