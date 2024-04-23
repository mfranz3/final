<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Title</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="database">
        <div class="{@type}">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="article">
        <div>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="key">
        <span class="{@type}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
</xsl:stylesheet>