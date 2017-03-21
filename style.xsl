<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>xml tutorial</title>
				<style type="text/css">
				table{
					width: 800px;
					border: solid 1 px;
				}
				th{
					background-color: lightgray;
				}
				td{border: solid lightgray 1px;}

				</style>
			</head>

			<body>
			<table>
				<tr><th>id</th> <th>Name</th> <th>Email</th> <th>Phone</th></tr>
				<xsl:for-each select="userData/user" >
				<xsl:sort select="name" order="descending"/>
				<tr><td><xsl:value-of select="@id" /></td> <td><xsl:value-of select="name" /></td> <td><xsl:value-of select="email" /></td> <td><xsl:value-of select="phone" /></td></tr>
</xsl:for-each>

			</table>
				
			</body>

		</html>
  </xsl:template>
</xsl:stylesheet>


<?xml-stylesheet type="text/xsl" href="style.xsl" ?>