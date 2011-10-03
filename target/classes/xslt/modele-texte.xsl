<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="text" indent="yes" />

	<xsl:template match="/">

		Liste des messages : 
		<![CDATA[<br/>]]>

		<xsl:apply-templates select="messages" />
	</xsl:template>

	<!-- Template pour la balise "messages" -->
	<xsl:template match="messages">
		<xsl:apply-templates select="message" />
	</xsl:template>

	<!-- Template pour la balise "message" -->
	<xsl:template match="message">
		<xsl:text />
		Auteur :
		<xsl:value-of select="auteur" /><![CDATA[<br/>]]>
		<xsl:text />
		Date du message :
		<xsl:value-of select="date" /><![CDATA[<br/>]]>
		<xsl:text />
		Contenu du message :
		<xsl:value-of select="contenu" />
		<![CDATA[<br/>]]>
		<xsl:text />---------------------------------------------------
		<![CDATA[<br/>]]>
	</xsl:template>

</xsl:stylesheet>