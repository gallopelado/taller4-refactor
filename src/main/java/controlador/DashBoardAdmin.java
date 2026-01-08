package controlador;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "DashBoardAdmin", urlPatterns = {"/yendo"})
public class DashBoardAdmin extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var urlVista = "/WEB-INF/vistas/dashboardAdmin.jsp";
        var rd = req.getRequestDispatcher(urlVista);
        rd.forward(req, resp);
    }
}
