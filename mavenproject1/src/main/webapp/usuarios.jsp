<%-- 
    Document   : welcome
    Created on : Jun 13, 2023, 10:06:17 AM
    Author     : armijof
--%>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("index.jsp");
    }
%>
<%@page import="modelo.Usuario"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <header>
        <%@include file="cabecera.jsp"%>
    </header>
    <body>
        <menu>
            <%@include file="menu.jsp"%>
        </menu>
        <menu_usuario>
        <%@include file="usuarios_menu.jsp"%>
        </menu_usuario>

</body>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</html>

