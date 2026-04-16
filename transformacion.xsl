<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output
    method="html"
    encoding="UTF-8"
    doctype-system="about:legacy-compat"
    indent="yes"/>

  <!-- ✅ BASE LOCAL -->
  <xsl:param name="base-url">item_</xsl:param>

  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <title>Catálogo</title>
      </head>
      <body>

        <h1>Catálogo</h1>

        <xsl:apply-templates select="inventario/objeto"/>

      </body>
    </html>
  </xsl:template>

  <!-- TARJETAS -->
  <xsl:template match="objeto">

    <!-- URL local -->
    <xsl:variable name="qr-url">
      <xsl:value-of select="$base-url"/>
      <xsl:value-of select="id"/>
    </xsl:variable>

    <div style="border:1px solid #ccc; padding:10px; margin:10px;">
      
      <h2><xsl:value-of select="nombre"/></h2>
      <p><xsl:value-of select="descripcion"/></p>

      <p><strong>ID:</strong> <xsl:value-of select="id"/></p>

      <!-- ✅ QR LOCAL SIMULADO -->
      <div style="width:80px;height:80px;border:1px solid #000;
                  display:flex;align-items:center;justify-content:center;
                  font-size:10px;">
        QR
      </div>

      <small><xsl:value-of select="$qr-url"/></small>

    </div>

  </xsl:template>

</xsl:stylesheet>