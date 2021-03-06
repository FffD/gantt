<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:date="http://exslt.org/dates-and-times"
extension-element-prefixes="date">

  <xsl:output method="xml" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" indent="yes"/>

  <xsl:template match="/">
    <data xmlns="http://www.ad-opt.com/2009/Altitude/data">
      <xsl:apply-templates select="//crew"/>
    </data>
  </xsl:template>

  <xsl:template match="crew">
    <xsl:element name="employee">
      <xsl:attribute name="ref">emp_<xsl:value-of select="pk"/></xsl:attribute>
      <xsl:variable name="varPK" select="pk"/>

      <xsl:element name="preassigned-task-list">
        <xsl:apply-templates select="//activity[fk_cm=$varPK]"/>
      </xsl:element>

    </xsl:element>
  </xsl:template>

  <xsl:template match="activity">

    <xsl:choose>
      <xsl:when test="type='DO'">
        <xsl:element name="task">
          <xsl:element name="activity-type">
            <xsl:attribute name="ref">off</xsl:attribute>
          </xsl:element> 
          <xsl:element name="start-date-lbt"><xsl:value-of select="//calendar[x=current()/x]/name"/></xsl:element>
          <xsl:element name="end-date-lbt"><xsl:value-of select="date:add(//calendar[x=current()/x]/name, 'P1D')"/></xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:when test="type='TRN'">
        <xsl:element name="task">
          <xsl:element name="seat-role">
            <xsl:attribute name="ref">CP</xsl:attribute>
          </xsl:element> 
          <xsl:element name="activity-type">
            <xsl:attribute name="ref"><xsl:value-of select="type"/></xsl:attribute>
          </xsl:element> 
          <xsl:element name="start-utc"><xsl:value-of select="utcStart"/></xsl:element>
          <xsl:element name="end-utc"><xsl:value-of select="utcEnd"/></xsl:element>
        </xsl:element>
      </xsl:when>
      <xsl:otherwise>
        <xsl:comment>not yet supported.</xsl:comment>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

</xsl:stylesheet>
