
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
        <title>Registrar Personas</title>
         <style type="text/css">
           .tablaRegistrar
            {
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
    <center>
        <div class="jumbotron">      
                        <h1>Registro de Mascotas</h1>
        </div> 
    </center>
        <form action="smascota">
            <table  class="tablaRegistrar">
                <tr>
                    <td>
                        Codigo De Dueño:
                    </td>
                    <td>
                        <input type="number" class="form-control" name="txtcodper" placeholder="Ingrese Codigo de Dueño" required  />
                    </td>
                </tr>
                <tr>
                    <td>
                        Nombre:
                    </td>
                    <td>
                        <input type="text" class="form-control" name="txtnombre" placeholder="Ingrese Nombre"  required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Fecha de Nacimiento:
                    </td>
                    <td>
                        <input type="date"  name="txtfnac" placeholder="Fecha de Nacimiento"  />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Genero:
                    </td>
                    <td>
                        <input type="text" name="txtgenero" size="1" maxlength="1" placeholder="MoH" required />
                    </td>
                </tr>
                <tr>
                    <td>
                        Raza:
                    </td>
                    <td>
                        <input type="text" class="form-control" name="txtraza" placeholder="Ingrese Raza"  />
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        Observaciones:
                    </td>
                    <td>
                        <textarea name="txtobservaciones" rows="5" cols="50" class="form-control" placeholder="Ingrese Observaciones"></textarea>
                    </td>
                </tr>
                
            </table>
            <br>
            
            <center>
                <input type="submit" class="btn btn-primary" name="accion" value="Registrar" />
                        &nbsp;
                        <input type="reset" class="btn btn-primary" value="Nuevo" />
                        &nbsp;
                        <input type="button" class="btn btn-info" value="Regresar" onclick="window.location.href='spersona'" />
            </center> 
        </form>
    <center>
        <br>
        <input type="button" class="btn btn-danger" value="Menu Principal" onclick="window.location.href='Index.jsp'"> 
    </center>
        
        
    </body>
</html>
