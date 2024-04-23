<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="gsws-final-styling.css" />
                <title>XSLT for sources</title>
            </head>
        </html>
        <body>
            
<!--====================== DISPLAY: =================================-->
            <h1>Tracking Women's Health in the News</h1>
            <div class="nav-bar">
                <ul>
                    <li><a href="index.xhtml">Home</a></li>
                    <li><a href="about.xhtml">About</a></li>
                    <li><a href="maps-page.xhtml">Maps</a></li>
                    <li><a href="index.xhtml">Articles</a></li>
                    <li><a href="index.xhtml">Conclusions</a></li>
                </ul>
            </div>
           
           
         
            <ul>
                <xsl:for-each select="//article">
                    <xsl:variable name="urls" as="xs:string" select="url"/>

                    <li><xsl:value-of select="author-s"/>. "<xsl:value-of select="title"/>." <em>Washington Post</em>, <xsl:value-of select="date"/>. <a href="{$urls}"><xsl:value-of select="url"/></a>.</li>
                </xsl:for-each>
            </ul>
        </body>
    </xsl:template>
  
  
</xsl:stylesheet>