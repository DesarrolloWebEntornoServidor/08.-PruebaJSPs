<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .degradado {
                background: -webkit-linear-gradient(#00f, #f0f, #f00);
                background: -moz-linear-gradient(#00f, #f0f, #f00);
                background: -o-linear-gradient(#00f, #f0f, #f00);
                background: linear-gradient(#00f, #f0f, #f00);
            }
            .texto {
                font-weight: bold;
                color: white;
                width: 100px;
            }
        </style>
    </head>
    <body>
        <h1>Conversión grados Celsius y Farenheit</h1>
        <table border="2" class="degradado">
        <tr>
	        <th class="texto">Celsius</th>
	        <th class="texto">Farenheit</th>
        </tr>
		<%
		    double celsius = 0.0;
		    double farenheit = 0.0;
		    for ( celsius = 0; celsius <= 100; celsius += 5) {
		        farenheit = (celsius * 1.8) + 32;
		%>      
		        <tr>
		            <th class="texto"><%=celsius%></th>
		            <th class="texto"><%=farenheit%></th>
		        </tr>
		<%    
		    }
		%>
        
        </table>
    </body>
</html>