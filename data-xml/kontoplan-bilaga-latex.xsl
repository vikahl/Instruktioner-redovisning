<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Output a text file in UTF-8, omit the XML declaration and indent the file -->
	<xsl:output
		method="text"
		encoding="UTF-8"
		omit-xml-declaration="yes"
		indent="yes" />
	
	<xsl:template match="/">
		
		% Genererad från kontoplan.xml med kontoplan-bilaga-latex.xsl.
		\begin{adjustwidth}{}{-8em}
			\section{Kontoplan}
			\label{sec:bilaga:kontoplan}
			\tablefirsthead{Konto	&amp;	Namn \\\toprule}
			\begin{xtabular}[l]{l l}
				<xsl:for-each select="kontoplan/konto">
					<xsl:sort select="nummer" order="ascending"/>
						<xsl:value-of select="nummer" /> &amp; <xsl:value-of select="titel" /> \\
				</xsl:for-each>
			\end{xtabular}
		\end{adjustwidth}

		</xsl:template>
</xsl:stylesheet>