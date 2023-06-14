<%-- 
    Document   : crear_usuario
    Created on : Jun 14, 2023, 5:14:23 PM
    Author     : armijof
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <header>
        <%@include file="cabecera.jsp"%>
    </header>
    <menu>
        <%@include file="menu.jsp"%>
    </menu>
    <usuarios_menu>
        <%@include file="usuarios_menu.jsp"%>
    </usuarios_menu>
    <body>
        <h2>usuarios.crear_usuario</h2>
        <form>
            <label>nombre:</label>
            <input type="text" name="nombre">
            <br>
            <label>apellido:</label>
            <input type="text" name="apellido">
            <br>
            <label>email:</label>
            <input type="text" name="email">
            <br>
            <label>num_tel:</label>
            <input type="text" name="num_tel">
            <br>
            <input type="submit" value="crear">
        </form>
        <br><br>
    </body>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</html>
