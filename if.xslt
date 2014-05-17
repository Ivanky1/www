<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>


<xsl:template match="/">
<xsl:variable name="number" select="10" />
<xsl:value-of select="if ($number &gt;= 10) then 'BIG' else 'Little' " />

</xsl:template>

</xsl:stylesheet>
