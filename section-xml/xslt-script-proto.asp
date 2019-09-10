<%
'Load XML
set xml = Server.CreateObject("Microsoft.FreeThreadedXMLDOM")
xml.async = true
xml.load(Server.MapPath(xmlDoc))

'Load XSL
set xsl = Server.CreateObject("Microsoft.FreeThreadedXMLDOM")
xml.async = true
xsl.load(Server.MapPath(xslDoc))

'Transform file
Response.Write(xml.transformNode(xsl))
%>