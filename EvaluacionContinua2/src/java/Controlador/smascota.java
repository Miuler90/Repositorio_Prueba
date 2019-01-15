
package Controlador;

import Modelo.mascota;
import Modelo.modelmascota;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "smascota", urlPatterns = {"/smascota"})
public class smascota extends HttpServlet 
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
                listarmascota(request, response);
                break;
            case "Registrar":
                registrarmascota(request, response);
                break;                
            case "Buscar":
                 buscarMascota(request,response);
                break;
        }
    }
    
    public void listarmascota(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try 
        {
            List<mascota> mascota;
            modelmascota mP = new modelmascota();
            mascota = mP.obtenermascota();
            request.setAttribute("mascotas", mascota);
            request.getRequestDispatcher("/listarmascota.jsp").forward(request, response);
        }
        catch (Exception e) 
        {
            request.setAttribute("error", e);
            request.getRequestDispatcher("/errormas.jsp").forward(request, response);
        }
    }
    
    public void registrarmascota(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try 
        {
             Date fecha = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
            
            int codpers = Integer.parseInt (request.getParameter("txtcodper"));
            String nombre = request.getParameter("txtnombre");
            String fechanac = request.getParameter("txtfnac");
            String genero = request.getParameter("txtgenero");
            String raza = request.getParameter("txtraza");
            String observaciones = request.getParameter("txtobservaciones");
            String fechareg = sdf.format(new Date());
            
            mascota nuevomascota = new mascota(codpers, nombre,fechanac,genero, raza,observaciones,fechareg);
            modelmascota mP = new modelmascota();
            mP.registrarmascota(nuevomascota);
            response.sendRedirect("smascota");
        }
        catch (Exception e) 
        {
            request.setAttribute("error", e);
            request.getRequestDispatcher("/errormas.jsp").forward(request, response);
        }
    }
    
    public void buscarMascota(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        try 
        {
            List<mascota> busqueda;
            modelmascota mp = new modelmascota();
            busqueda = mp.buscarMascota(request.getParameter("txtBuscar"));
            
            request.setAttribute("busqueda",busqueda);
            request.getRequestDispatcher("/listarbusqueda.jsp").forward(request, response);
        } 
        catch (Exception e) 
        {
            request.setAttribute("error", e);
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
    
    
}
