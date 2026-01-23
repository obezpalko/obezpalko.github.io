<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>Sitemap</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <style type="text/css">
          body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
            color: #333;
            max-width: 75rem;
            margin: 0 auto;
            padding: 2.5rem;
          }
          h1 {
            font-weight: 500;
            font-size: 2.5rem;
            margin-bottom: 1.5rem;
          }
          p.description {
            font-size: 1.1rem;
            color: #666;
            margin-bottom: 2rem;
          }
          table {
            width: 100%;
            border-collapse: collapse;
            font-size: 1rem;
          }
          th {
            text-align: left;
            padding: 1rem;
            border-bottom: 2px solid #ddd;
            background-color: #f8f9fa;
            font-weight: 600;
          }
          td {
            padding: 1rem;
            border-bottom: 1px solid #ddd;
          }
          tr:hover {
            background-color: #f8f9fa;
          }
          a {
            color: #0366d6;
            text-decoration: none;
          }
          a:hover {
            text-decoration: underline;
          }
          .meta {
            font-family: monospace;
            color: #666;
          }
        </style>
      </head>
      <body>
        <h1>XML Sitemap</h1>
        <p class="description">
          This XML Sitemap is generated to be consumed by search engines.
          <br/>
          This page explains the structure of the site and lists <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/> content pages.
        </p>
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
                <td class="meta">
                  <xsl:value-of select="sitemap:lastmod"/>
                </td>
                <td class="meta">
                  <xsl:value-of select="sitemap:priority"/>
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
