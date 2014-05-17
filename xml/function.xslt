<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns:sample="http://www.oreilly.com/catalog/xslt" exclude-result-prefixes="xs sample">
	<xsl:output method="html" include-content-type="no"/>
<xsl:variable name="colors" select="('red','green','blue','grey')" as="xs:string *" />	
	
	<xsl:template match="/">
	<table border="1">
			<tr>
			<xsl:for-each select="1 to 12">
				<th width="3%"  bgcolor="{sample:getColor(position())}"><xsl:value-of select="." /></th>
			</xsl:for-each>
			</tr>
	</table>
	</xsl:template>	
	
<xsl:function name="sample:getColor" as="xs:string">
	<xsl:param name="pos" as="xs:integer" />
	<xsl:value-of select="$colors[($pos mod count($colors)) +1]" />
</xsl:function>	
</xsl:stylesheet>
