<%-- 
    Document   : InicioSesion
    Created on : 20 may. 2024, 1:24:15 p. m.
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio de Sesión</title>
    <link href="resources/css/InicioSesion/InicioSesion.css" rel="stylesheet" type="text/css"/>
     <!-- Contenido del encabezado  -->
    <jsp:include page="vistas/PieDePagina_Encabezado/EncabezadoInicio.jsp" flush="true"/>
</head>
<body>
    <div class="formulario">
        <h1>INICIO DE SESIÓN</h1>
        <form method="post" action="SvInicioSesion">
            <div class="username">
                <input type="text" name="correo" required>
                <label>Correo electrónico</label>
            </div>
            <div class="contrasena">
                <input type="password" name="contrasena" required>
                <label>Contraseña</label>
            </div>
            <div class="recordar">¿Olvidó su contraseña?</div>
            <input class="IniciarSesion" type="submit" value="Iniciar Sesión">
        </form>
        <form method="post" action="CrearCuenta.jsp">
            <input class="CrearCuenta" type="submit" value="Crear una cuenta">
        </form>

 
    </div>
        <!-- Contenido del pie de pagina -->
     <footer><jsp:include page="vistas/PieDePagina_Encabezado/PieInicio.jsp" flush="true"/></footer>
</body>
</html>
