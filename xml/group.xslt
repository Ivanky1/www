<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
<xsl:key name="curs"  match="/lab6_1/course/keywords/keyword" use="." />	
	<xsl:template match="/">
	<xsl:variable name="st" select="/lab6_1/course/keywords/keyword" />
	<xsl:variable name="keyword" select="key('curs',$st)" />
		
		<xsl:for-each select="$st">
			<xsl:if test="generate-id(.) = generate-id(key('curs', . )) ">
				<h1>		<xsl:value-of select=". " /> </h1>
			</xsl:if>
		</xsl:for-each>
	
	</xsl:template>		
</xsl:stylesheet>
