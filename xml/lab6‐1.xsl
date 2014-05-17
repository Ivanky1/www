<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
<xsl:output method="html" omit-xml-declaration="yes" encoding="windows-1251" />
<xsl:key name="teacherName" match="/lab6_1/course/teachers" use="teacher" />
<xsl:key name="keywordName" match="/lab6_1/course/keywords" use="keyword" />
<xsl:key name="ixSost" match="/lab6_1/course" use="concat(/teachers/teacher, /keywords/keyword)" />


<xsl:template match="/lab6_1">
<h1>Преподаватель Борисов читает</h1>
<ul>
	<li>
<xsl:apply-templates select="key('teacherName', 'Никитин И.Г.')" />	
	</li>
	
</ul>
<p>
<h2>Количество курсов по XML: 
<xsl:apply-templates select="key('keywordName', 'XML')" />	
</h2>
</p>

<h3>Преподаватель Борисов читает

<xsl:apply-templates select="key('ixSost', concat('Борисов И.О.' , 'PHP'))" />	
	</h3>

</xsl:template>

<xsl:template match="teachers">
		<xsl:value-of  select="../title" />
</xsl:template>

<xsl:template match="keywords">

		<xsl:value-of  select="count(keyword)" />

</xsl:template>

<xsl:template match="course">

		<xsl:value-of  select="title" />


</xsl:template>


</xsl:stylesheet>
