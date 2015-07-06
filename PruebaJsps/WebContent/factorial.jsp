<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <h1>Calcular factorial</h1>
    <form method="POST" action="factorial.jsp">
        N�mero: <input type="text" name="numero" size="3" maxlength="2" /> <br />
        <input type="submit" value="Calcular" />
    </form>

<%
    String parametro = request.getParameter("numero");
    if (parametro != null && parametro != "") {
        try {
            int numero = Integer.parseInt(request.getParameter("numero"));
            out.println("<br />");
            out.println("Factorial de " + numero + " = " + factorial(numero));
        } catch (Exception e) {
            out.println("<br />");
            out.println("Excepci�n: se intodujo el caracter " + parametro + " no num�rico");
        }
    } else {
        out.println("<br />");
        out.println("No se intodujo ning�n caracter");        
    }    
%>

<%!
  // la admiraci�n de cierre es necesaria para declarar una funci�n
  // Indica que se trata de una secci�n declarativa
    int factorial(int n) {
        if (n == 1) {
            return n;
        } else {
            return n * factorial(n - 1);
        }
    }
%>
    
</body>
</html>