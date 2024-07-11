package DAO;

import Conexion.ConectarBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.CrearCuenta;
public class RegistrarCuentaDAO {
    
    private ConectarBD conectar;

    public RegistrarCuentaDAO() {
        conectar = new ConectarBD();
    }
   
    public String insertarCuenta(CrearCuenta cuenta) {
        String sql = "INSERT INTO registrocuenta (id,nombre, Apellido, Correo, Telefono, Contraseña) VALUES (?, ?, ?, ?, ?,?)";
        try (Connection con = conectar.getConnection(); PreparedStatement ps = con.prepareStatement(sql))
        {
            ps.setInt(1, cuenta.getId());
            ps.setString(2, cuenta.getNombre());
            ps.setString(3, cuenta.getApellido());
            ps.setString(4, cuenta.getCorreo());
            ps.setString(5, cuenta.getTelefono());
            ps.setString(6, cuenta.getContraseña());
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0)
            {
                return "Cuenta insertada con éxito";
            } else
            {
                return "Error al insertar cuenta";
            }
        } catch (SQLException e)
        {
            e.printStackTrace();
            return "Error al insertar la cuenta: " + e.getMessage();
        }
    }

     public String InicioSesion(CrearCuenta cuenta) {
    String sql = "SELECT correo, Contraseña FROM registrocuenta WHERE correo = ? AND Contraseña = ?";
    try (Connection con = conectar.getConnection(); 
         PreparedStatement ps = con.prepareStatement(sql)) 
    {
        ps.setString(1, cuenta.getCorreo());
        ps.setString(2, cuenta.getContraseña());
        ResultSet rs = ps.executeQuery();
        
        if (rs.next()) {  // Si hay un resultado, el inicio de sesión es exitoso
            return "Inicio de sesión exitoso";
        } else {
            return "Correo o contraseña incorrectos";
        }
    } catch (SQLException e) {
        e.printStackTrace();
        return "Error al intentar iniciar sesión: " + e.getMessage();
    }
}

    }
    
    
    


