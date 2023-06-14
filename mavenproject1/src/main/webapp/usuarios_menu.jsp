<%-- 
    Document   : usuarios_menu
    Created on : Jun 14, 2023, 4:43:38 PM
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
        <h2>usuarios_menu</h2>
        <ul>
            <li><a href="Controlador?accion=listarUsuarios">listar-usuarios</a></li>
            <li><a href="Controlador?accion=crear_usuario">crear-usuarios</a></li>
            <li><a href="Controlador?accion=usuarios">buscar</a></li>
        </ul>
    </body>
</html>
