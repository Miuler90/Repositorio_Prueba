
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class modelmascota 
{
     private Connection con = null;
    private Statement st = null;
    private ResultSet rs = null;
    
    public List<mascota> obtenermascota() throws Exception
    {
        List<mascota> mascotar = new ArrayList<>();
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/veterinaria","root","");
            st = con.createStatement();
            String sql = "SELECT * FROM mascotas";
            rs = st.executeQuery(sql);
            while(rs.next())
            {
//                int codmas = rs.getInt("codmas");
                int codpers = rs.getInt("codpers");
                String nombre = rs.getString("nombre");
                String fechanac = rs.getString("fechanac");
                String genero = rs.getString("genero");
                String raza = rs.getString("raza");
                String observaciones = rs.getString("observaciones");
                String fechareg = rs.getString("fechareg");
                
                mascota mascotatemporal = new mascota (codpers,nombre,fechanac,genero,raza,observaciones,fechareg);
                mascotar.add(mascotatemporal);
            }
            con.close();
            st.close();
            rs.close();
            return mascotar;
        } 
        catch (Exception e)
        {
            throw e;
        }
    }
    
    public void registrarmascota(mascota nuevomascota) throws Exception
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/veterinaria","root","");
            st = con.createStatement();
            String sql = "INSERT INTO mascotas (codpers, nombre, fechanac, genero, raza,observaciones,fechareg) VALUES('"+nuevomascota.getCodpers()+"','"+nuevomascota.getNombre()+"','"+nuevomascota.getFechanac()+"','"+nuevomascota.getGenero()+"','"+nuevomascota.getRaza()+"','"+nuevomascota.getObservaciones()+"','"+nuevomascota.getFechareg()+"')";
            st.executeUpdate(sql);
            con.close();
            st.close();
        } 
        catch (Exception e) 
        {
            throw e;
        }
    }
    
    
    public List<mascota> buscarMascota(String buscar) throws Exception
    {
        List<mascota> busqueda = new ArrayList<>();
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://Localhost:3306/veterinaria", "root","");
            st = con.createStatement();
            String sql = "SELECT m.* FROM personas p INNER JOIN mascotas m ON p.codper = m.codpers WHERE p.dni = '"+ buscar +"' ";
            rs = st.executeQuery(sql);
            while(rs.next())
            {
                int codpers = rs.getInt("codpers");
                String nombre = rs.getString("nombre");
                String fechanac = rs.getString("fechanac");
                String genero = rs.getString("genero");
                String raza = rs.getString("raza");
                String observaciones = rs.getString("observaciones");
                String fechareg = rs.getString("fechareg");
                mascota busquedatemporal = new mascota (codpers,nombre,fechanac,genero,raza,observaciones,fechareg);
                busqueda.add(busquedatemporal);
            }
            con.close();
            st.close();
            rs.close();
            return busqueda;
        }
        catch (Exception e)
        {
            throw e;
        }
    }   
}
