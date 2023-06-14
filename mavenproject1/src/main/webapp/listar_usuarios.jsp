<%-- 
    Document   : listar_usuarios
    Created on : Jun 13, 2023, 5:35:24 PM
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
    <usuarios_menu>
        <%@include file="usuarios_menu.jsp"%>
    </usuarios_menu>

    <h2>usuarios.listado_usuarios</h2>
    <table border="1">
        <tr>
            <th>id</th>
            <th>nombre</th>
            <th>apellido</th>
            <th>email</th>
        </tr>
        <%
            for (Usuario usuario : miLista) {
        %>
        <tr>
            <td><%=usuario.getIdUsuario()%></td>
            <td><%=usuario.getUserName()%></td>
            <td><%=usuario.getApellido()%></td>
            <td><%=usuario.getEmail()%></td>

        </tr>
        <%}%>
    </table> 
    <br><br>
</body>
    <footer>
        <%@include file="footer.jsp"%>
    </footer>
</html>
