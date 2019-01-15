<%@page import="java.util.List"%>
<%@page import="Modelo.persona"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Personas</title>
        
    </head>
    
     <%
        List<persona> personar = 
         (List<persona>)request.getAttribute("personas");
    %>

    <body>
      
        <form class="container-fluid">
            <table class="table">
          <tr class="thead-dark">
              
                <th>Dni</th>
                <th>Nombre</th>
                <th>Apellido Paterno</th>
                <th>Apellido Materno</th>
                <th>Fecha de Nacimiento</th>
                <th>Genero</th>
                <th>Direccion</th>
                <th>N° Celular</th>
                <th>Estado</th>
                <th>Fecha de Registro</th>
            </tr>
            <%
                for (persona personatemporal : personar) 
                {
                    %>
                    <tr class="resultados">
                       
                        <td><%=personatemporal.getDni()%></td>
                        <td><%=personatemporal.getNombre()%></td>
                        <td><%=personatemporal.getApellidopa()%></td>
                        <td><%=personatemporal.getApellidoma()%></td>
                        <td><%=personatemporal.getFechanac()%></td>
                        
                        <td>
                        <%
                            
                            if (personatemporal.getGenero().equals("M") || personatemporal.getGenero().equals("m")) 
                            {
                                %>
                                  Masculino
                                <%
                            }else if (personatemporal.getGenero().equals("F") || personatemporal.getGenero().equals("f")) 
                            {
                                %>
                                  Femenino
                                <%
                            }
                        %>
                        </td>
                        <td><%=personatemporal.getDireccion()%></td>
                        <td><%=personatemporal.getCel()%></td>
                        <td>
                        <%
                            
                            if (personatemporal.getEstado().equals("A") || personatemporal.getEstado().equals("a")) 
                            {
                                %>
                                  Activo
                                <%
                            }else if (personatemporal.getEstado().equals("I") || personatemporal.getEstado().equals("i")) 
                            {
                                %>
                                  Inactivo
                                <%
                            }
                        %>
                        </td>
                        <td><%=personatemporal.getFechareg()%></td>
                    </tr>
                    <%
                }
            %>
        </table>
        </form>
    <center>
        <input type="button" class="btn btn-success" value="Nuevo Registro" onclick="window.location.href='registrarpersona.jsp'"> 
          
    <input type="button" class="btn btn-warning" value="Regresar" onclick="window.location.href='Index.jsp'">
     <input type="button" class="btn btn-danger" id="boton" value="Buscar Mascotas" onclick="window.location.href='buscar.jsp'"> 
    </center>
    </body>
</html>
