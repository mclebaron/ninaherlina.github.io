<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:stock="https://ninaherlina.github.io/hw5.xml">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="stock:doc">
  <html>
    <head>
      <title>HW5 XSL Output</title>
    </head>
  <body>
    <table style="width:450px">
      <tr style="color:white; background:black">
        <th>Symbol</th>
        <th>Price</th>
        <th>Ceo</th>
      </tr>
      <xsl:for-each select="stock:item">
        <xsl:choose>
            <xsl:if test="stock:price &gt;70.00">
              <tr style="color:white; background:cyan; text-align:center">
                <td> <xsl:value-of="stock:symbol"/> </td>
                <td> <xsl:value-of="stock:price"/> </td>
                <td> <xsl:value-of="stock:ceo"/> </td>
              </tr>
              </xsl:if>
          <xsl:otherwise>
            <tr style="color:white; background:#D3D3D3; text-align:center">
                <td> <xsl:value-of="stock:symbol"/> </td>
                <td> <xsl:value-of="stock:price"/> </td>
                <td> <xsl:value-of="stock:ceo"/> </td>
              </tr>
          </xsl:otherwise>
          </xsl:choose>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

