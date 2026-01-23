<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <title>Sitemap</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        
        <link rel="icon" type="image/svg+xml" href="/favicon.svg"/>
        <link rel="stylesheet" href="style.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin"/>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&amp;display=swap" rel="stylesheet"/>
      </head>
      <body>
        
        <header>
          <div class="container">
            <h1>XML Sitemap</h1>
            <p class="subtitle">
              Generated for search engines. Lists <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/> content pages.
            </p>
          </div>
        </header>

        <main class="container projects-section">
          <div class="table-container">
            <table>
              <thead>
                <tr>
                  <th>Location</th>
                  <th>Last Modified</th>
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
                    <td>
                      <xsl:value-of select="sitemap:lastmod"/>
                    </td>
                    <td>
                      <xsl:value-of select="sitemap:priority"/>
                    </td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </div>
        </main>

        <footer>
          <div class="container">
            <p>&#169; 2026 Alex Bezpalko. <a href="/">Back to Home</a></p>
          </div>
        </footer>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
