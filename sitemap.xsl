<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <title>Sitemap — Alex Bezpalko</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="theme-color" content="#14110d"/>
        <link rel="icon" type="image/svg+xml" href="/favicon.svg"/>
        <link rel="stylesheet" href="/style.css"/>
      </head>
      <body>
        <div class="page">
          <div class="window">
            <div class="titlebar">
              <i></i><i></i><i></i>
              <span class="path">alex@bezpalko — ~/sitemap.xml</span>
            </div>
            <div class="window-body">
              <p class="line"><span class="prompt"></span><span class="cmd">cat sitemap.xml</span></p>
              <p class="ls">
                <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/> pages indexed for search engines
              </p>
              <div class="table-scroll">
                <table>
                  <thead>
                    <tr>
                      <th>Location</th>
                      <th>Modified</th>
                      <th>Priority</th>
                    </tr>
                  </thead>
                  <tbody>
                    <xsl:for-each select="sitemap:urlset/sitemap:url">
                      <tr>
                        <td>
                          <a href="{sitemap:loc}">
                            <xsl:value-of select="sitemap:loc"/>
                          </a>
                        </td>
                        <td><xsl:value-of select="sitemap:lastmod"/></td>
                        <td><xsl:value-of select="sitemap:priority"/></td>
                      </tr>
                    </xsl:for-each>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <footer>&#169; 2026 Alex Bezpalko &#183; <a href="/">cd ~/</a></footer>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
