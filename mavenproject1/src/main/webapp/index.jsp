<%-- 
    Document   : index
    Created on : Jun 12, 2023, 5:15:14 PM
    Author     : armijof
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <header>
        <h1>My Web Application</h1>
        <h2>Breve descripción de la página web.</h2>
    </header>
    <body>
        <h1>Login</h1>
        <form action="Controlador?accion=login" method="post">
            <label>username:</label>
            <input type="text" name="username">
            <br>
            <label>password:</label>
            <input type="password" name="password">
            <br>
            <input type="submit" value="acceder"/>
        </form>
        <br><br>
    </body>
    <footer>
        <address>
            Franco armijo<br>
            franco.armijo@gmail.com
        </address>
        <ul>
            <li><a href="">Home</a></li>
            <li><a href="">Food</a></li>
            <li><a href="">Drinks</a></li>
        </ul>
    </footer>
</html>
