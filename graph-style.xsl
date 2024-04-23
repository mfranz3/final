<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/2000/svg"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="totalNum" as="xs:double" select="15"/>
    <xsl:variable name="maxheight" as="xs:double" select="1000"/>
    <xsl:variable name="maxwidth" as="xs:double" select="15 * 120"/>
    <xsl:variable name="scale" as="xs:double" select="10"/>
    <xsl:variable name="spacing" as="xs:double" select="10"/>
    <xsl:variable name="barWidth" as="xs:double" select="20"/>
    <xsl:variable name="barInterval" as="xs:double" select="$barWidth + $spacing"/>
    
    <xsl:template match="/">
        <svg
            height="{$maxheight + 400}"
            width="{$maxwidth + 400}"
            viewBox="0, -2000, 2000, 2000">
            <g>
                <xsl:variable name="height" as="xs:double" select="$barInterval * 23"/>
                <text  x="50" y="-{$height + $maxheight}" text-anchor="middle" font-size="xx-large">Number of Key Words Used: Chicago Tribune</text>
            </g>
            <xsl:apply-templates/>
        </svg>
    </xsl:template>
    
    <xsl:template match="//body/div[1]">
        <xsl:variable name="women" as="xs:integer" select="span[contains(@class, 'women')] => count()"/>
        <xsl:variable name="ivf" as="xs:integer" select="span[contains(@class, 'ivf')] => count()"/>
        <xsl:variable name="abortion" as="xs:integer" select="span[contains(@class, 'abortion')] => count()"/>
        <xsl:variable name="abortion-pill" as="xs:integer" select="span[contains(@class, 'abortion-pill')] => count()"/>
        <xsl:variable name="birthControl" as="xs:integer" select="span[contains(@class, 'birth-control')] => count()"/>
        <xsl:variable name="gyno" as="xs:integer" select="span[contains(@class, 'gynecologist')] => count()"/>
        <xsl:variable name="pregnancy" as="xs:integer" select="span[contains(@class, 'pregnancy')] => count()"/>
        <xsl:variable name="breastCancer" as="xs:integer" select="span[contains(@class, 'breast-cancer')] => count()"/>
        <xsl:variable name="death" as="xs:integer" select="span[contains(@class, 'maternal-death')] => count()"/>
        <xsl:variable name="period" as="xs:integer" select="span[contains(@class, 'period')] => count()"/>
        <xsl:variable name="cervicalCancer" as="xs:integer" select="span[contains(@class, 'cervical-cancer')] => count()"/>
        <xsl:variable name="sexism" as="xs:integer" select="span[contains(@class, 'sexism')] => count()"/>
        <xsl:variable name="PCOS" as="xs:integer" select="span[contains(@class, 'PCOS')] => count()"/>
        <xsl:variable name="reproduction" as="xs:integer" select="span[contains(@class, 'reproductive-health')] => count()"/>
        
        
    </xsl:template>
</xsl:stylesheet>