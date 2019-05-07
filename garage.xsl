<xsl:stylesheet version="1.0" xmlns:xsl="garage.xml">

<xsl:template match="/">
  <html>
  <body>
    <h2>HotWheels !</h2>
    <table>
      <tr>
        <th>Title</th>
        <th>Artist</th>
      </tr>
      <xsl:for-each select="voitures/voiture">
        <tr>
          <td><xsl:value-of select="modele"/></td>
          <td><xsl:value-of select="marque"/></td>
          <td><xsl:value-of select="prix"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>