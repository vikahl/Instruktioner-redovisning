<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Output a text file in UTF-8, omit the XML declaration and indent the file -->
	<xsl:output
		method="text"
		encoding="UTF-8"
		omit-xml-declaration="yes"
		indent="yes" />
	
	<xsl:template match="/">
	
		\section{Tillgångskonton}
		\label{sec:kontoplan:tillgång}
		\begin{longtable}[l]{l p{0.4\linewidth} p{0.4\linewidth}}
			Konto	&	Namn	&	Kommentar	\\\toprule\endhead
				<xsl:for-each select="kontoplan/konto@typ='tillgång'">
					<xsl:sort select="nummer" order="ascending"/>
						<xsl:value-of select="nummer" /> & <xsl:value-of select="titel" /> & <xsl:value-of select="kommentar" />
			</xsl:for-each>
		\end{longtable}
		
		\section{Skuldkonton}
		\label{sec:kontoplan:skuld}
		\begin{longtable}[l]{l p{0.4\linewidth} p{0.4\linewidth}}
			Konto	&	Namn	&	Kommentar	\\\toprule\endhead
				<xsl:for-each select="kontoplan/konto@typ='skuld'">
					<xsl:sort select="nummer" order="ascending"/>
						<xsl:value-of select="nummer" /> & <xsl:value-of select="titel" /> & <xsl:value-of select="kommentar" />
			</xsl:for-each>
		\end{longtable}
	
		\section{Intäktskonton}
		\label{sec:kontoplan:intäkt}
		\begin{longtable}[l]{l p{0.4\linewidth} p{0.4\linewidth}}
			Konto	&	Namn	&	Kommentar	\\\toprule\endhead
				<xsl:for-each select="kontoplan/konto@typ='intäkt'">
					<xsl:sort select="nummer" order="ascending"/>
						<xsl:value-of select="nummer" /> & <xsl:value-of select="titel" /> & <xsl:value-of select="kommentar" />
			</xsl:for-each>
		\end{longtable}

		\section{Kostnadskonto}
		\label{sec:kontoplan:kostnad}
		\begin{longtable}[l]{l p{0.4\linewidth} p{0.4\linewidth}}
			Konto	&	Namn	&	Kommentar	\\\toprule\endhead
				<xsl:for-each select="kontoplan/konto@typ='kostnad'">
					<xsl:sort select="nummer" order="ascending"/>
						<xsl:value-of select="nummer" /> & <xsl:value-of select="titel" /> & <xsl:value-of select="kommentar" />
			</xsl:for-each>
		\end{longtable}

	</xsl:template>
</xsl:stylesheet>