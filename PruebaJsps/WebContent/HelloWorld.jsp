<%-- Directiva page con información de la página e imports--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="java.util.ArrayList"
	%>
	
	
<!DOCTYPE html">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; utf-8">
		<title>Hello World</title>
		<style type="text/css">
			h1{
			color:red;
			}
		</style>
	</head>
	<body>
		<h1>Hello World</h1>
		
		<%-- Ejemplo scriptlet 1 --%>
		<%
		   String hola = "Hola ";
		%>
		
		<%-- Ejemplo scriptlet 1 --%>
		<jsp:scriptlet>
		   String mundo = "Mundo";
		</jsp:scriptlet>		
		
		<%-- Ejemplo declaración 1 --%>		
		<%!
		   public String holaMundo(){
			return "Hola Mundo";
		}
		%>
		
		<%-- Ejemplo declaración 2 --%>
		<%!
		   public long Factorial(long fact){
			//TODO: función recursiva para calcula el factorial
			return 0;
		}
		%>
		<p>
		<%-- Ejemplo expresión 1 --%>
		<%=hola %>
		
		<%-- Ejemplo expresión 2 --%>
		<jsp:expression> 	
		mundo 
		</jsp:expression>
		</p>
		
		<p>
		<%-- Ejemplo para importar librerias en la directiva page --%>
		<%
		ArrayList<String> lista = new ArrayList<>();
		lista.add("Ola ");
		lista.add("ke ");
		lista.add("ase?");
		
		for(String palabra:lista)
			out.print(palabra);
		%>
		</p>
	</body>
</html>