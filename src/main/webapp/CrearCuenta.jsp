<%-- 
    Document   : CrearCuenta
    Created on : 20 may. 2024, 3:17:16 p. m.
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio de Sesión</title>
    <link href="resources/css/CrearCuenta/CrearCuenta.css" rel="stylesheet" type="text/css"/>
     <!-- Contenido del encabezado  -->
    <jsp:include page="vistas/PieDePagina_Encabezado/EncabezadoInicio.jsp" flush="true"/>
</head>
<body>
    <div class="formulario">
        <h1>CREAR CUENTA</h1>
        <form action="SvRegistrarCuenta" method="POST">
  <div class="username">
                <input type="text" name="nombre" required>
                <label>Ingresar su Nombre</label>
            </div>
            <div class="LastName">
                <input type="text" name="apellido" required >
                <label>Ingresar su Apellido</label>
            </div>
            <div class="Mail">
                <input type="text" name="correo" required>
                <label>Ingresar su Correo</label>
            </div>
            
             <div class="Telefono">
                <input type="text" name="Ntelefono" maxlength="9" required>
                <label>Telefono</label>
            </div>
            <div class="contrasena">
                <input type="password" id="password" name="contrasena" required>
                <label>Ingrese su contraseña</label>
                <input type="checkbox" id="showPassword">
            </div>
                   <form method="post" required>
            <input class="CrearCuenta" type="submit" name="CrearCuenta" value="Crear una cuenta" >
        </form>
 
    </div>
  <script>
        const passwordInput = document.getElementById("password");
        const showPasswordCheckbox = document.getElementById("showPassword");

        showPasswordCheckbox.addEventListener("change", function() {
            if (showPasswordCheckbox.checked) {
                passwordInput.type = "text"; // Muestra la contraseña :D
            } else {
                passwordInput.type = "password"; // No muestra la contraseña :D
            }
        });
    </script>

    <footer>   <!-- Contenido del pie de pagina -->
     <jsp:include page="vistas/PieDePagina_Encabezado/PieInicio.jsp" flush="true"/></footer>
</body>
</html>
