<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<html>
			<body>
				<h1>Liste des messages : </h1>
				<xsl:apply-templates select="messages" />
			</body>
		</html>
	</xsl:template>

	<!-- Template pour la balise "messages" -->
	<xsl:template match="messages">
		<table border="1" align="center">
			<tr>
				<td>
					<xsl:text />
					Auteur
				</td>
				<td>
					<xsl:text />
					Date du message
				</td>
				<td>
					<xsl:text />
					Contenu du message
				</td>
			</tr>
			<xsl:apply-templates select="message" />
		</table>
	</xsl:template>

	<!-- Template pour la balise "message" -->
	<xsl:template match="message">
		<tr>
			<td>
				<xsl:value-of select="auteur" />
			</td>
			<td>
				<xsl:value-of select="date" />
			</td>
			<td>
				<xsl:value-of select="contenu" />
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>