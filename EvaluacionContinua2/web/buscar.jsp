
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="smascota">
            ingrese DNI:
            <input type="text" name="txtBuscar" required/>
            
            <input type="submit" name="accion" value="Buscar">
        </form>
        <input type="button" class="btn btn-danger" id="boton" value="Regresar" onclick="window.location.href='smascota'"> 
    </body>
</html>
