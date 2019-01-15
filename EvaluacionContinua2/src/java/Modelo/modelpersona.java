package Modelo;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class modelpersona 
{
    
    private Connection con = null;
    private Statement st = null;
    private ResultSet rs = null;
    
    public List<persona> obtenerpersona() throws Exception
    {
        List<persona> personar = new ArrayList<>();
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/veterinaria","root","");
            st = con.createStatement();
            String sql = "SELECT * FROM personas";
            rs = st.executeQuery(sql);
            while(rs.next())
            {
//                int codper = rs.getInt("codper");
                String dni = rs.getString("dni");
                String nombre = rs.getString("nombre");
                String apellidopa = rs.getString("apellidop");
                String apellidoma = rs.getString("apellidom");
                String fechanac = rs.getString("fechanac");
                String genero = rs.getString("genero");
                String direccion = rs.getString("direccion");
                String cel = rs.getString("cel");
                String estado = rs.getString("estado");
                String fechareg = rs.getString("fechareg");
                
                persona personatemporal = new persona(dni,nombre,apellidopa,apellidoma,fechanac,genero,direccion,cel,estado,fechareg);
                personar.add(personatemporal);
            }
            con.close();
            st.close();
            rs.close();
            return personar;
        } 
        catch (Exception e)
        {
            throw e;
        }
    }
    
    public void registrarpersona(persona nuevopersona) throws Exception
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/veterinaria","root","");
            st = con.createStatement();
            String sql = "INSERT INTO personas(dni, nombre, apellidop, apellidom,fechanac,genero,direccion,cel,estado,fechareg) VALUES ('"+nuevopersona.getDni()+"','"+nuevopersona.getNombre()+"','"+nuevopersona.getApellidopa()+"','"+nuevopersona.getApellidoma()+"','"+nuevopersona.getFechanac()+"','"+nuevopersona.getGenero()+"','"+nuevopersona.getDireccion()+"','"+nuevopersona.getCel()+"','"+nuevopersona.getEstado()+"','"+nuevopersona.getFechareg()+"')";
            st.executeUpdate(sql);
            con.close();
            st.close();
        } 
        catch (Exception e) 
        {
            throw e;
        }
    }
    
}