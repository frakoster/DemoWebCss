<%-- 
    Document   : welcome
    Created on : Jun 13, 2023, 3:57:47 PM
    Author     : armijof
--%>
<%
String username = (String)session.getAttribute("username");
if(username==null){
    response.sendRedirect("index.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>web application</title>
    </head>
    <body>
        <header>
            <%@include file="cabecera.jsp"%>
        </header>
        <menu>
            <%@include file="menu.jsp"%>
        </menu>
        <h2>dashboard</h2>
    </body>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</html>
