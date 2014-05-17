<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="windows-1251" indent="yes"/>
	<xsl:key name="cityIndex"  match="/lab7/item/@city" use="." />
	<xsl:template match="/" > 
		<xsl:for-each select="/lab7/item/@city">
		
		<xsl:variable name="counter" select="." />
<ul>
			<xsl:if test="$counter[generate-id($counter) = generate-id( key('cityIndex',$counter) )]">
	<li><xsl:value-of select="." /><br/></li>		
			</xsl:if>
			<ul>
				<li><xsl:value-of select="generate-id($counter)" /></li>
					<ul>
				<li><xsl:value-of select="generate-id(key('cityIndex',$counter) )" /></li>
			</ul>
			</ul>
</ul>			
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
