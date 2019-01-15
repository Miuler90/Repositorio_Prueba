
package Modelo;

public class mascota 
{
    private int codmas;
    private int codpers;
    private String nombre;
    private String fechanac;
    private String genero;
    private String raza;
    private String observaciones;
    private String fechareg;

    public mascota(int codmas, int codpers, String nombre, String fechanac, String genero, String raza, String observaciones, String fechareg) {
        this.codmas = codmas;
        this.codpers = codpers;
        this.nombre = nombre;
        this.fechanac = fechanac;
        this.genero = genero;
        this.raza = raza;
        this.observaciones = observaciones;
        this.fechareg = fechareg;
    }

    public mascota( int codpers, String nombre, String fechanac, String genero, String raza, String observaciones, String fechareg) {
        
        this.codpers = codpers;
        this.nombre = nombre;
        this.fechanac = fechanac;
        this.genero = genero;
        this.raza = raza;
        this.observaciones = observaciones;
        this.fechareg = fechareg;
    }

    public int getCodmas() {
        return codmas;
    }

    public void setCodmas(int codmas) {
        this.codmas = codmas;
    }

    public int getCodpers() {
        return codpers;
    }

    public void setCodpers(int codpers) {
        this.codpers = codpers;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
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

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public String getFechareg() {
        return fechareg;
    }

    public void setFechareg(String fechareg) {
        this.fechareg = fechareg;
    }
    
}
