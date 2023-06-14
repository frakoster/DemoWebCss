<%-- 
    Document   : expression_language
    Created on : Jun 14, 2023, 3:18:56 PM
    Author     : armijof
--%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <label>miLista.size():</label>${lista.size()}
        <br>
        <label>userId:</label>${usuario.getIdUsuario()}
        <br>
        <label>userName:</label>${usuario.getUserName()}
        <br>
        <label>apellido:</label>${usuario.getApellido()}
        <br>
        <label>email:</label>${usuario.getEmail()}
        <br><br>
    </body>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</html>
