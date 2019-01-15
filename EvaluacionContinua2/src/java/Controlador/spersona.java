
package Controlador;

import Modelo.modelpersona;
import Modelo.persona;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "spersona", urlPatterns = {"/spersona"})
public class spersona extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if(accion==null)
        {
            accion = "Listar";
        }
        switch(accion)
        {
            case "Listar":
                listarpersona(request, response);
                break;
            case "Registrar":
                registrarpersona(request, response);
                break;
        }
    }
    
    public void listarpersona(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try 
        {
            List<persona> persona;
            modelpersona mP = new modelpersona();
            persona = mP.obtenerpersona();
            request.setAttribute("personas", persona);
            request.getRequestDispatcher("/listarPersona.jsp").forward(request, response);
        }
        catch (Exception e) 
        {
            request.setAttribute("error", e);
            request.getRequestDispatcher("/errorper.jsp").forward(request, response);
        }
    }
    
    public void registrarpersona(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        try 
        {
            Date fecha = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            
            String dni = request.getParameter("txtdni");
            String nombre = request.getParameter("txtnombre");
            String apellidopa = request.getParameter("txtap");
            String apellidoma = request.getParameter("txtam");
            String fechanac = request.getParameter ("txtfnac");
            String genero = request.getParameter("txtgenero");
            String direccion = request.getParameter("txtdire");
            String cel = request.getParameter("txtcel");
            String estado = request.getParameter("txtestado");
            String fechareg = sdf.format(new Date());
            persona nuevopersona = new persona(dni, nombre, apellidopa,apellidoma,fechanac,genero,direccion,cel,estado,fechareg);
            modelpersona mP = new modelpersona();
            mP.registrarpersona(nuevopersona);
            response.sendRedirect("spersona");
        }
        catch (Exception e) 
        {
            request.setAttribute("error", e);
            request.getRequestDispatcher("/errorper.jsp").forward(request, response);
        }
    }
    
}
