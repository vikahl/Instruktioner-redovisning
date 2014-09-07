<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Output a text file in UTF-8, omit the XML declaration and indent the file -->
	<xsl:output
		method="text"
		encoding="UTF-8"
		omit-xml-declaration="yes"
		indent="yes" />
	
	<xsl:template match="/">
		<xsl:for-each select="instruktioner/instruktion">
			<xsl:sort select="titel" order="ascending"/>
			
			<xsl:if test="@typ='post'">
				\section{<xsl:value-of select="titel" />}
				
				<xsl:if test="kommentar != ''">
					\todo{<xsl:value-of select="kommentar" />}
				</xsl:if>
				
				<!-- \label{sec:<xsl:value-of select="titel" />} -->
				<xsl:value-of select="introduktion" />
			
				<xsl:if test="bokforing != ''">
					\begin{redovisning}
						<xsl:value-of select="bokforing" />
					\end{redovisning}
				</xsl:if>
			
				<xsl:if test="bokslut != ''">
					\begin{bokslut}
						<xsl:value-of select="bokslut" />
					\end{bokslut}
				</xsl:if>
				
			</xsl:if>
			<xsl:if test="@typ='referens'">
				\section{<xsl:value-of select="titel" />}
				\emph{<xsl:value-of select="introduktion" />}
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>