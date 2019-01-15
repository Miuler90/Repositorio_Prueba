
package Modelo;

import java.sql.Date;

public class persona 
{
    private int codper;
    private String dni;
    private String nombre;
    private String apellidopa;
    private String apellidoma;
    private String fechanac;
    private String genero;
    private String direccion;
    private String cel;
    private String estado;
    private String fechareg;

    public persona(int codper, String dni, String nombre, String apellidopa, String apellidoma, String fechanac, String genero, String direccion, String cel, String estado, String fechareg) {
        this.codper = codper;
        this.dni = dni;
        this.nombre = nombre;
        this.apellidopa = apellidopa;
        this.apellidoma = apellidoma;
        this.fechanac = fechanac;
        this.genero = genero;
        this.direccion = direccion;
        this.cel = cel;
        this.estado = estado;
        this.fechareg = fechareg;
    }

    public persona(String dni, String nombre, String apellidopa, String apellidoma, String fechanac, String genero, String direccion, String cel, String estado, String fechareg) {
        this.dni = dni;
        this.nombre = nombre;
        this.apellidopa = apellidopa;
        this.apellidoma = apellidoma;
        this.fechanac = fechanac;
        this.genero = genero;
        this.direccion = direccion;
        this.cel = cel;
        this.estado = estado;
        this.fechareg = fechareg;
    }

    public int getCodper() {
        return codper;
    }

    public void setCodper(int codper) {
        this.codper = codper;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidopa() {
        return apellidopa;
    }

    public void setApellidopa(String apellidopa) {
        this.apellidopa = apellidopa;
    }

    public String getApellidoma() {
        return apellidoma;
    }

    public void setApellidoma(String apellidoma) {
        this.apellidoma = apellidoma;
    }

    public String getFechanac() {
        return fechanac;
    }

    public void setFechanac(String fechanac) {
        this.fechanac = fechanac;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCel() {
        return cel;
    }

    public void setCel(String cel) {
        this.cel = cel;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getFechareg() {
        return fechareg;
    }

    public void setFechareg(String fechareg) {
        this.fechareg = fechareg;
    }

    
}
