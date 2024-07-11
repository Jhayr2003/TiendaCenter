package servlets;

import DAO.RegistrarCuentaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.CrearCuenta;

public class SvInicioSesion extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            //CODIGO PARA QUE TE DEJE INSERTAR (Ñ)
            int id= 0;
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
       
        String correo = request.getParameter("correo");
        String contrasena  = request.getParameter("contrasena"); 
        
       CrearCuenta cuenta= new CrearCuenta (0,null,null,correo,null,contrasena);
       RegistrarCuentaDAO cuentadao= new RegistrarCuentaDAO();
       String resultado= cuentadao.InicioSesion(cuenta);
         if ( "Inicio de sesión exitoso".equals(resultado)) {
            response.sendRedirect("/TiendaCenter/home.jsp");
        } else {
            // Manejar el error de inserción
            request.setAttribute("mensajeError", resultado);
            request.getRequestDispatcher("InicioSesion1.jsp").forward(request, response);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
