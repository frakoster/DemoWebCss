<%-- 
    Document   : cabecera
    Created on : Jun 14, 2023, 4:31:37 PM
    Author     : armijof
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <h1>My Web Application</h1>
            <h2>Breve descripción de la página web.</h2>
            <label>username:${username}</label>
            <br>
            <a href="Controlador?accion=logout">logout</a>
        </header>
    </body>
</html>
