<%-- 
    Document   : EncabezadoInicio
    Created on : 20 may. 2024, 11:13:01 a. m.
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <link href="resources/css/EncabezadoInicio/EncabezadoInicio.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>CENTER</title>
        
    
    </head>
    <body>
        <header class="Encabezado">
            <a href="home.jsp" class="Logo">
                 <img src="resources/IMAGENES/ImagenEncabezado/GAMER.jpg" alt=""/>
                <h2 class="NombreTienda">CENTER</h2></a>

            <nav class="OpcionesEncabezado">         
                <a style="font-size: 15px" href="#"  class="Inicio">Inicio</a>
                <a style="font-size: 15px" href="#" class="Comunidad">Comunidad</a>
             <a style="font-size: 15px" href="#" class="Preventa">Preventa</a>
                <a style="font-size: 15px" href="#"  class="Ofertas">Ofertas</a>
                <a style="font-size: 15px" href="#" class="Contacto">Contacto</a>
                <a style="font-size: 15px" href="#" class="Servicio al cliente">Servicio al cliente</a>
                <a style="font-size: 15px" href="#" class="Comunidad">Sobre nosotros</a>
                <a style="font-size: 15px" href="#"  class="InicioSesion">  

                    <a style="font-size: 15px" href="#" class="CarroCompra">
                        <img src="resources/IMAGENES/ImagenEncabezado/CarroCompra (2).png"  onmouseover="cargarSlideCarrito()" value="obtenerProductosEnCarrito"><div>Su Carrito</div> </a>
                    
                    <!-- JSP PARA INICIO DE SESION -->
                        <%
        // Verifica si el usuario ha iniciado sesión
        String nombre = (String) session.getAttribute("nombre");
        if (nombre != null) {
    %>
                <a href="InicioSesion1.jsp" class="InicioSesion" >
               <img src="resources/IMAGENES/ImagenEncabezado/InicioSesion.png" alt=""/>
               <!-- ATRIBUTO PARA CAMBIAR EL NOMBRE LUEGO DE INICIAR SESIÓN -->
                <div>${nombre}</div> 
            </a>
    <%
        } else {
    %>
         <a href="InicioSesion1.jsp" class="InicioSesion" >
                <img src="resources/IMAGENES/ImagenEncabezado/InicioSesion.png" alt=""/>
                <div>Mi Cuenta</div>
            </a>
    <%
        }
    %>
             
            </nav>
        </header>
        <div id="carritoContainer"></div>

        <script>
            function cerrarSesion() {
                window.location.href = 'InicioSesion1.jsp';
            }
        </script>

    </body>