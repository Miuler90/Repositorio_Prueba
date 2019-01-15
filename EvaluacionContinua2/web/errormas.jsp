
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error mascota</title>
    </head>
    <body>
         Se ha producido el siguiente error: <%=request.getAttribute("error")%>
        <br>
        <br>
        <input type="button" value="Regresar" onclick="window.location.href='smascota'" />
        <input type="button" value="Regresar al Inicio" onclick="window.location.href='Index.jsp'" />
    </body>
</html>
