<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Discos Duros</title>
				<link rel="stylesheet" type="text/css" href="../../css/css.css"/>
			</head>
			<body>
				<div class="letras_blancas">
					<xsl:for-each select="catalog/discos">
						<xsl:element name="img">
							<xsl:attribute name="src">
								<xsl:value-of select="imagen/@ruta"/>
							</xsl:attribute>
							<xsl:attribute name="height">150</xsl:attribute>
						</xsl:element><br></br>
						<xsl:value-of select="nombre"/><br></br>
						<xsl:value-of select="capacidad"/><br></br>
						<xsl:value-of select="marca"/><br></br>
						<xsl:value-of select="precio"/><br></br>
						<xsl:value-of select="imagen"/><br></br>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>

