<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions"
 xmlns:sample="http://www.oreily.com/catalog/xslt" exclude-result-prefixes="xs sample">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
		<xsl:variable name="color" as="xs:string *" select="('green','red','blue','pink')" /> 
		<xsl:template match="/">
		<table border="1" bgcolor="black">
			<tbody>
				<tr>
				<xsl:for-each select="1 to 12">
					<th style="font-size:30px; background:{sample:getBackground(current())}">
						<xsl:value-of select="."  />
					</th>
				</xsl:for-each>
				</tr>
			</tbody>
		</table>
	
		</xsl:template>	

<xsl:function name="sample:getBackground" as="xs:string">
	<xsl:param name="pos" as="xs:integer" />
	<xsl:value-of select="$color[$pos mod count($color) +1]" />
</xsl:function>	
</xsl:stylesheet>
