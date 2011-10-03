<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" />

	<xsl:template match="/">
		<auteurs>
			<xsl:apply-templates select="messages" />
		</auteurs>
	</xsl:template>

	<!-- Template pour la balise "messages" -->
	<xsl:template match="messages">
		<xsl:for-each select="//message[not(auteur = preceding-sibling::message/auteur)]">
			<auteur>
				<xsl:variable name="nom_auteur">
					<xsl:value-of select="auteur" />
				</xsl:variable>
				<xsl:value-of select="auteur" />
				<xsl:for-each select="//message[auteur=$nom_auteur]">					
						<message>
							<date>
								<xsl:value-of select="date" />
							</date>
							<contenu>
								<xsl:value-of select="contenu" />
							</contenu>
						</message>
				</xsl:for-each>
			</auteur>
		</xsl:for-each>

	</xsl:template>

	<!-- Template pour la balise "message" <xsl:template match="message"> <date> 
		<xsl:value-of select="date" /> </date> <contenu> <xsl:value-of select="contenu" 
		/> </contenu> </xsl:template> -->

</xsl:stylesheet>