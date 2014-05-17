<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" />
	<xsl:template match="/" >
	<xsl:for-each select="/lab6_1/course/keywords">
	<xsl:sort select="./keyword"  data-type="text" />
		<xsl:variable name="curs" select="keyword" />
		<xsl:if test="not(preceding-sibling::keywords[keyword = $curs])" >
			<xsl:value-of select="keyword" /> <br/>
		</xsl:if>
	</xsl:for-each>	
	</xsl:template>
</xsl:stylesheet>
