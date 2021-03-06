<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" indent="yes"/>

  <xsl:template match="/">
    <data xmlns="http://www.ad-opt.com/2009/Altitude/data">

      <xsl:for-each select="//crew">
        <xsl:element name="employee">
          <xsl:attribute name="id">emp_<xsl:value-of select="pk"/></xsl:attribute>
          <xsl:element name="name"><xsl:value-of select="name"/></xsl:element>
          <xsl:element name="birth-date-lbt"><xsl:value-of select="birthdate"/></xsl:element>
          <xsl:element name="seniority"><xsl:value-of select="pk"/></xsl:element>
          <xsl:element name="base">
            <xsl:attribute name="ref"><xsl:value-of select="//configuration/station"/></xsl:attribute>
          </xsl:element>

          <!-- ================== -->
          <!-- hard coded section -->
          <!-- ================== -->
          <primary-seat-qual ref="CP"/>
          <crew-status>A</crew-status>              <!-- A Active, D Terminated or I Inactive -->
          <employment-status>FT</employment-status> <!-- FT fulltime, PT parttime -->
          <gender>M</gender>                        <!-- M male, F female -->
          <nationality>CAN</nationality>      
          <inexperienced>false</inexperienced>
          <min-block-time>3000</min-block-time>
          <max-block-time>4000</max-block-time>
          <hire-date-lbt>2000-01-01</hire-date-lbt>

          <aircraft-qual-list>
            <aircraft-qual>
              <aircraft ref="330" />
              <seat-qual ref="CP" />
              <start-date-lbt>2009-12-01</start-date-lbt>
              <end-date-lbt>2069-09-17</end-date-lbt>
              <inexperienced>false</inexperienced>
            </aircraft-qual>
            <aircraft-qual>
              <aircraft ref="33X" />
              <seat-qual ref="CP" />
              <start-date-lbt>2011-01-06</start-date-lbt>
              <end-date-lbt>2069-09-17</end-date-lbt>
              <inexperienced>false</inexperienced>
            </aircraft-qual>
            <aircraft-qual>
              <aircraft ref="340" />
              <seat-qual ref="CP" />
              <start-date-lbt>2009-12-01</start-date-lbt>
              <end-date-lbt>2069-09-17</end-date-lbt>
              <inexperienced>false</inexperienced>
            </aircraft-qual>
          </aircraft-qual-list>

          <language-list>
            <language ref="EN" />
            <language ref="FR" />
          </language-list>      


          <station-restriction-list>
          </station-restriction-list>

          <region-recency-list>
            <region-recency>
              <region ref="AFR" />
              <last-flown-date-lbt>2014-01-10</last-flown-date-lbt>
            </region-recency>
            <region-recency>
              <region ref="EUR" />
              <last-flown-date-lbt>2014-05-08</last-flown-date-lbt>
            </region-recency>
            <region-recency>
              <region ref="JAK" />
              <last-flown-date-lbt>2014-06-01</last-flown-date-lbt>
            </region-recency>
            <region-recency>
              <region ref="MDE" />
              <last-flown-date-lbt>2014-06-01</last-flown-date-lbt>
            </region-recency>
          </region-recency-list>
          <extra-qualification-list>
            <extra-qualification>
              <extra-qual-code>CAN</extra-qual-code>
              <start-date-lbt>2013-08-29</start-date-lbt>
              <end-date-lbt>2023-08-29</end-date-lbt>
            </extra-qualification>
            <extra-qualification>
              <extra-qual-code>USVISA</extra-qual-code>
              <start-date-lbt>2013-08-29</start-date-lbt>
              <end-date-lbt>2023-08-29</end-date-lbt>
            </extra-qualification>
            <extra-qualification>
              <extra-qual-code>13</extra-qual-code>
              <start-date-lbt>2004-04-04</start-date-lbt>
              <end-date-lbt>2069-09-17</end-date-lbt>
            </extra-qualification>
            <extra-qualification>
              <extra-qual-code>27</extra-qual-code>
              <start-date-lbt>2004-04-04</start-date-lbt>
              <end-date-lbt>2069-09-17</end-date-lbt>
            </extra-qualification>
          </extra-qualification-list>

          <take-off-landing-last-flown-list>
            <take-off-landing-last-flown>
              <aircraft ref="330" />
              <take-off-date-lbt>2014-05-07</take-off-date-lbt>
            </take-off-landing-last-flown>
            <take-off-landing-last-flown>
              <aircraft ref="330" />
              <take-off-date-lbt>2014-04-19</take-off-date-lbt>
            </take-off-landing-last-flown>
            <take-off-landing-last-flown>
              <aircraft ref="330" />
              <take-off-date-lbt>2014-04-14</take-off-date-lbt>
            </take-off-landing-last-flown>
          </take-off-landing-last-flown-list>

           
          <!-- ========================= -->
          <!-- End of hard coded section -->
          <!-- ========================= -->

        </xsl:element>
      </xsl:for-each>
    </data>
  </xsl:template>


</xsl:stylesheet>
