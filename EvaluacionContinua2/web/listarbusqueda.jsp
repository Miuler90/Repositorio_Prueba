
<%@page import="java.util.List"%>
<%@page import="Modelo.mascota"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        List<mascota> busqueda = (List<mascota>)request.getAttribute("busqueda");
    %>
    <body>
        <table align="center" border="1">
            <tr>
                <th>Codigo persona</th>
                <th>Nombre</th>
                <th>Fecha Nacimiento</th>
                <th>Genero</th>
                <th>Raza</th>
                <th>Observaciones</th>
                <th>Fecha Registro</th>
            </tr>
            <%
                for(mascota mascotatemporal : busqueda)
                {
                    %>
                    <tr>
                        <td><%=mascotatemporal.getCodpers()%></td>
                        <td><%=mascotatemporal.getNombre() %></td>
                        <td><%=mascotatemporal.getFechanac()%></td>
                        <td><%=mascotatemporal.getGenero()%></td>
                        <td><%=mascotatemporal.getRaza()%></td>
                        <td><%=mascotatemporal.getObservaciones()%></td>
                        <td><%=mascotatemporal.getFechanac()%></td>
                    </tr>
                    <%
                }
            %>
        </table>
       <center> <input type="button" class="btn btn-warning" value="Regresar" onclick="window.location.href='Index.jsp'"> </center>
    </body>
</html>
