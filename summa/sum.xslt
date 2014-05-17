<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
		
	<xsl:template match="/">
		<xsl:variable name="summa">
			<xsl:call-template name="price">
				<xsl:with-param name="items" select="catalog/items/item" />
			</xsl:call-template>
		</xsl:variable>
		
	<xsl:value-of select="format-number($summa,'$#,###.00')"	/>
	</xsl:template>
	
	<xsl:template name="price">
		<xsl:param name="items" />
		<xsl:param name="total" select="0" />
		<xsl:choose>
			<xsl:when test="$items">
				<xsl:variable name="firstItem" select="$items[1]/price * $items[1]/qua" />

				<xsl:call-template name="price">
				<xsl:with-param name="items" select="$items[position() > 1]" />
				<xsl:with-param name="total" select="$firstItem+$total" /> 
			</xsl:call-template>
			
			</xsl:when>
			<xsl:otherwise><xsl:value-of select="$total" /></xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
