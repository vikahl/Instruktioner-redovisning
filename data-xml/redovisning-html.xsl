<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">

		<xsl:for-each select="instruktioner/instruktion[typ='post']">
		  <div style="background-color:grey;color:white;padding:4px">
			<xsl:value-of select="titel"/>
			</div>
		  <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
			<p>
				<xsl:value-of select="introduktion"/>
			</p>
			<p>
				<strong>Löpande bokföring</strong> <br />
				<xsl:value-of select="bokforing" />
			</p>
			<p>
				<span style="font-style:italic"> <xsl:value-of select="kommentar"/></span>
			</p>
		  </div>
		</xsl:for-each>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>