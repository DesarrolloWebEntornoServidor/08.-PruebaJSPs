<%-- 
    Document   : CelsiusFarenheit2
    Created on : 16-feb-2013, 1:30:40
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conversión de grados Celsius a Fahrenheit</title>
    </head>
    <body>
<table border="1" cellpadding="0"
   cellspacing="0" width="35%" align="center">

  <tr>
    <td width="100%">
     <p align="center"><b>Conversión de grados Celsius a Fahrenheit</b></p>
     <form method="POST" action="ConversionCelsiusFahrenheit.jsp">
       
        <p align="center"><b>Temperatura en grados Celsius:</b>
	<input type="text" name="cel" size="20">
        <input type="submit" value="Convertir" name="B1"></p>
        </form>
<%
	String str = request.getParameter("cel");
	if(str == null || str.equals("")){ 
	   out.println("<b>Fahrenheit:</b>");
	} else {
        try {
			float c = Float.parseFloat(str);
			float f = 32 + 9*c/5;
			out.println("<b>Fahrenheit:</b>" + f);
        } catch (Exception e) {
			out.println("<b>Fahrenheit:</b>");
        }
	} 
%>
	  <p>&nbsp;</p></td></tr>
  </table>
</body>
</html>