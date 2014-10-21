<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Output a text file in UTF-8, omit the XML declaration and indent the file -->
	<xsl:output
		method="text"
		encoding="UTF-8"
		omit-xml-declaration="yes"
		indent="yes" />
	
	<xsl:template match="/">
	
		\begin{adjustwidth}{}{-8em}
			\section{Tillgångskonton}
			\label{sec:kontoplan:tillgång}
			\tablefirsthead{Konto	&amp;	Namn	&amp;	Kommentar	\\\toprule}
			\begin{xtabular}[l]{l p{0.4\linewidth} p{0.6\linewidth}}
				<xsl:for-each select="kontoplan/konto[@typ='tillgång']">
					<xsl:sort select="nummer" order="ascending"/>
						<xsl:value-of select="nummer" /> &amp; <xsl:value-of select="titel" /> &amp; <xsl:value-of select="kommentar" /> \\
				</xsl:for-each>
			\end{xtabular}
		\end{adjustwidth}
		
		\clearpage
		\begin{adjustwidth}{-8em}{}
			\section{Skuldkonton}
			\label{sec:kontoplan:skuld}
			\tablefirsthead{Konto	&amp;	Namn	&amp;	Kommentar	\\\toprule}
			\begin{xtabular}[l]{l p{0.4\linewidth} p{0.6\linewidth}}
				<!-- Konto	&amp;	Namn	&amp;	Kommentar	\\\toprule -->
					<xsl:for-each select="kontoplan/konto[@typ='skuld']">
						<xsl:sort select="nummer" order="ascending"/>
							<xsl:value-of select="nummer" /> &amp; <xsl:value-of select="titel" /> &amp; <xsl:value-of select="kommentar" /> \\
				</xsl:for-each>
			\end{xtabular}
		\end{adjustwidth}
	
		\begin{adjustwidth}{-8em}{}
			\section{Intäktskonton}
			\label{sec:kontoplan:intäkt}
			\tablefirsthead{Konto	&amp;	Namn	&amp;	Kommentar	\\\toprule}
			\begin{xtabular}[l]{l p{0.4\linewidth} p{0.6\linewidth}}
				<!-- Konto	&amp;	Namn	&amp;	Kommentar	\\\toprule -->
					<xsl:for-each select="kontoplan/konto[@typ='intäkt']">
						<xsl:sort select="nummer" order="ascending"/>
							<xsl:value-of select="nummer" /> &amp; <xsl:value-of select="titel" /> &amp; <xsl:value-of select="kommentar" /> \\
				</xsl:for-each>
			\end{xtabular}
		\end{adjustwidth}
		
		\clearpage
		\begin{adjustwidth}{}{-8em}
			\section{Kostnadskonto}
			\label{sec:kontoplan:kostnad}
			\tablefirsthead{Konto	&amp;	Namn	&amp;	Kommentar	\\\toprule}
			\begin{xtabular}[l]{l p{0.4\linewidth} p{0.6\linewidth}}
				<!-- Konto	&amp;	Namn	&amp;	Kommentar	\\\toprule -->
					<xsl:for-each select="kontoplan/konto[@typ='kostnad']">
						<xsl:sort select="nummer" order="ascending"/>
							<xsl:value-of select="nummer" /> &amp; <xsl:value-of select="titel" /> &amp; <xsl:value-of select="kommentar" /> \\
				</xsl:for-each>
			\end{xtabular}
		\end{adjustwidth}

	</xsl:template>
</xsl:stylesheet>