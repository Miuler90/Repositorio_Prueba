<%@page import="Modelo.mascota"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
    </head>
     <%
        List<mascota> mascotar = 
         (List<mascota>)request.getAttribute("mascotas");
    %>
    <body>
        
        <form class="container-fluid">
            <table class="table">
          <tr class="thead-dark">
              
                <th>Codigo Dueño</th>
                <th>Nombre</th>
                <th>Fecha de Nacimiento</th>
                <th>Genero</th>
                <th>Raza</th>
                <th>Observaciones</th>
                <th>Fecha de Registro</th>
            </tr>
            <%
                for (mascota mascotatemporal : mascotar) 
                {
                    %>
                    <tr class="resultados">
                       
                        <td><%=mascotatemporal.getCodpers()%></td>
                        <td><%=mascotatemporal.getNombre()%></td>
                        <td><%=mascotatemporal.getFechanac()%></td>
                        <td>
                        <%
                            
                            if (mascotatemporal.getGenero().equals("M") || mascotatemporal.getGenero().equals("m")) 
                            {
                                %>
                                  Macho
                                <%
                            }else if (mascotatemporal.getGenero().equals("H") || mascotatemporal.getGenero().equals("h")) 
                            {
                                %>
                                  Hembra
                                <%
                            }
                        %>
                        </td>
                        <td><%=mascotatemporal.getRaza()%></td>
                        <td><%=mascotatemporal.getObservaciones()%></td>
                        <td><%=mascotatemporal.getFechareg()%></td>
                    </tr>
                    <%
                }
            %>
        </table>
        </form>
         <center>  
        <input type="button" class="btn btn-success" value="Nuevo Registro" onclick="window.location.href='registrarmascota.jsp'"> 
        
    <input type="button" class="btn btn-warning" value="Regresar" onclick="window.location.href='Index.jsp'"> </center>
    
    
    </body>
</html>
