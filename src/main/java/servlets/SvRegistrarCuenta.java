package servlets;

import DAO.RegistrarCuentaDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.CrearCuenta;

public class SvRegistrarCuenta extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //CODIGO PARA QUE TE DEJE INSERTAR (Ñ)
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        int id= 0; //id
        String Nombre = request.getParameter("nombre"); //nombre 
        String Apellido = request.getParameter("apellido"); //apellido
        String Correo = request.getParameter("correo"); //correo
        String Telefono = request.getParameter("Ntelefono"); //telefono
        String Contraseña = request.getParameter("contrasena"); //contraseña

        CrearCuenta cuenta = new CrearCuenta(id,Nombre, Apellido, Correo, Telefono, Contraseña);
        RegistrarCuentaDAO cuentadao = new RegistrarCuentaDAO();
        
        String resultado = cuentadao.insertarCuenta(cuenta);
           if ( "Cuenta insertada con éxito".equals(resultado)) {
            response.sendRedirect("/TiendaCenter/home.jsp");
        } else {
            // Manejar el error de inserción
            request.setAttribute("mensajeError", resultado);
            request.getRequestDispatcher("error.jsp").forward(request, response);
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
