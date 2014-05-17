<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html"/>
	<xsl:template match="/"	>
		<xsl:for-each select="/users/user">
		<xsl:sort select="@name" />
		<xsl:if test="position() mod 2 = 0" >
		<xsl:value-of select="position()" />
		</xsl:if>
			<xsl:value-of select="@name" /> <br />
			
				<xsl:for-each select="name" >
			<xsl:number count="user|name" level="multiple"  format="1.1." />
		<xsl:value-of select="." /> <br />
		</xsl:for-each>
		</xsl:for-each>
	</xsl:template>	
</xsl:stylesheet>
