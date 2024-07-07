<%-- 
    Document   : home
    Created on : 9 may. 2024, 11:59:48
    Author     : Jhayr

--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="UTF-8">
    <title>Tienda de Videojuegos</title>
</head>
<body>
    <!-- Contenido del encabezado  -->
    <jsp:include page="vistas/PieDePagina_Encabezado/EncabezadoInicio.jsp" flush="true" />
    <!-- Contenido de la pagina de inicio  -->
    <jsp:include page= "vistas/inicio1/Inicio.jsp" flush="true"/>
    
     <!-- Contenido del pie de pagina -->
     <jsp:include page="vistas/PieDePagina_Encabezado/PieInicio.jsp" flush="true"/> 
</body>
</html>
