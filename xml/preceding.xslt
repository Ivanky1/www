<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="windows-1251" />
	
<xsl:template match="/">
	<xsl:for-each select="preceding::course/keywords[1]">
		<xsl:value-of select="." /> <br/>
			
		
	</xsl:for-each>	
</xsl:template>
</xsl:stylesheet>
