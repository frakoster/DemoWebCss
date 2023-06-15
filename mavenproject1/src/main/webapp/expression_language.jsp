<%-- 
    Document   : expression_language
    Created on : Jun 14, 2023, 3:18:56 PM
    Author     : armijof
--%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("index.jsp");
    }
    List<Usuario> miLista = (List<Usuario>) session.getAttribute("lista");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <%@include file="cabecera.jsp"%>
        </header>
        <menu>
            <%@include file="menu.jsp"%>
        </menu>
        <h2>expression language</h2>
        <label>miLista.size():</label>${fn:length("miLista")}
        <br>
        <label>userId:</label>${usuario.getIdUsuario()}
        <br>
        <label>userName:</label>${usuario.getUserName()}
        <br>
        <label>apellido:</label>${usuario.getApellido()}
        <br>
        <label>email:</label>${usuario.getEmail()}
        <br>
        <label>toUpperCase: </label>${fn:toUpperCase("franco armijo")}
        <br>
        <label>toLowerCase: </label>${fn:toLowerCase("FRANCO ARMIJO")}
        <br>
        <label>trim(): </label>${fn:trim("     franco      armijo    ")}
        <br><br>
        <h2>usando EL para leer la List indicando el indice["i"]</h2>
        ${lista[0]}
        <br>
        ${lista[1]}
        <br>
        ${lista[2]}
        <br>
        ${lista[3]}
        <br><br>
        <h2>usando un bucle for()</h2>
        <%            for (Usuario u : miLista) {%>
        <%=u%>
        <br>
        <%
            }
        %>
        <br><br>
    </body>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</html>
