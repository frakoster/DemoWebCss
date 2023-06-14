package controlador;

import modelo.Usuario;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Controlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        HttpSession session = request.getSession();
        switch (accion) {
            case "dashboard":
                response.sendRedirect("welcome.jsp");
                break;
            case "usuarios":
                response.sendRedirect("usuarios.jsp");
                break;
            case "logout":
                session.invalidate();
                response.sendRedirect("index.jsp");
                break;
            case "listarUsuarios":
                response.sendRedirect("listar_usuarios.jsp");
                session.setAttribute("lista", getUsuariosDataBase());
                break;
            case "el":
                Usuario usuario = new Usuario(1, "Franco", "Armijo", "farmijo@mail.com");
                session.setAttribute("usuario", usuario);
                session.setAttribute("lista", getUsuariosDataBase());
                response.sendRedirect("expression_language.jsp");
                break;
            case "crear_usuario":
                response.sendRedirect("crear_usuario.jsp");
                break;
            default:
                response.sendRedirect("index.jsp");

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("username=" + username + ",password=" + password);
        if (username.equals("farmijo") && password.equals("fa1400")) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.setAttribute("lista", getUsuariosDataBase());
            response.sendRedirect("welcome.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }

    }

    private final List<Usuario> getUsuariosDataBase() {
        List<Usuario> lista = new ArrayList<>();
        lista.add(new Usuario(0, "Franco", "Armijo", "farmijo@mail.com"));
        lista.add(new Usuario(1, "Josefa", "armijo", "jarmijo@mail.com"));
        lista.add(new Usuario(2, "Katherine", "carcamo", "kcarcamo@mail.com"));
        lista.add(new Usuario(3, "Estrella", "Armijo", "earmijo@mail.com"));
        return lista;
    }

}
