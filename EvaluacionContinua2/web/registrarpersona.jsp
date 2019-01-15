 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .tablaRegistrar
            {
                margin: 0 auto;
            }
        </style>
        
    </head>
    <body>
     
        <form action="spersona">
            <table class="tablaRegistrar">
                <tr>
                    <th colspan="2">
                        Registro de Dueños
                    </th>
                </tr>
                <tr>
                    <td>
                        Dni:
                    </td>
                    <td>
                        <input type="number" name="txtdni" maxlength="8" placeholder="Ingrese Dni" required />
                    </td>
                </tr>
                <tr>
                    <td>
                        Nombre:
                    </td>
                    <td>
                        <input type="text" name="txtnombre" placeholder="Ingrese Nombre" required />
                    </td>
                </tr>
                <tr>
                    <td>
                        Apellido Paterno:
                    </td>
                    <td>
                        <input type="text" name="txtap" placeholder="apellido paterno" required  />
                    </td>
                </tr>
                <tr>
                    <td>
                        Apellido Materno:
                    </td>
                    <td>
                        <input type="text" name="txtam" placeholder="apellido materno" required />
                    </td>
                </tr>
                <tr>
                    <td>
                        Fecha de Nacimiento:
                    </td>
                    <td>
                        <input type="date" name="txtfnac" placeholder="Fecha de Nacimiento" required />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Genero:
                    </td>
                    <td>
                        <input type="text" name="txtgenero" size="1" maxlength="1" placeholder="MoF" required />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        Direccion:
                    </td>
                    <td>
                        <input type="text" name="txtdire" placeholder="Ingrese Direccion" required />
                    </td>
                </tr>
                <tr>
                    <td>
                        Celular:
                    </td>
                    <td>
                        <input type="text" name="txtcel" placeholder="Ingrese numero" required />
                    </td>
                </tr>
                <tr>
                    <td>
                        Estado:
                    </td>
                    <td>
                        <input type="text" name="txtestado" size="1" maxlength="1" placeholder="A o I" required  />
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2" style="text-align: center">
                        <input type="submit" name="accion" value="Registrar" />
                        &nbsp;
                        <input type="reset" value="Nuevo" />
                        &nbsp;
                        <input type="button" value="Regresar" onclick="window.location.href='spersona'" />
                    </td>
                </tr>
            </table>
            
        </form>
    <center>  
    <input type="button" value="Regresar" onclick="window.location.href='Index.jsp'"> </center>
        
        
    </body>
</html>
