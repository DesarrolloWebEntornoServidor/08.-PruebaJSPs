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
        <style type="text/css">
        	table {
	        	border:1px solid black;
	        	padding :0;
	        	border-spacing:0;
	        	width:35%;
	        	margin-left:auto; 
    			margin-right:auto;
    		}
    		
    		td {
    			width:100%;
    		}
    		
        	p {
        		text-align:center
        	}
        </style>
        
    </head>
    <body>
		<table>
		
		  <tr>
		    <td>
		     <p>
		     	<b>Conversión de grados Celsius a Fahrenheit</b>
		     </p>
		     <form method="POST" action="ConversionCelsiusFahrenheit.jsp">
		       
		        <p>
		        	<b>Temperatura en grados Celsius:</b>
					<input type="text" name="cel" size="20">
		        	<input type="submit" value="Convertir" name="B1">
		        </p>
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
			  	<p>&nbsp;</p>
			  	</td>
			  </tr>
		  </table>
	</body>
</html>