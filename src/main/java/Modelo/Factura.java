package Modelo;

public class Factura {

String Nombres;
String Cedula;
String Descripcion;
String Total;
String Tarjeta;

    public Factura() {
    }

    public Factura(String Nombres, String Cedula, String Descripcion, String Total, String Tarjeta) {
        this.Nombres = Nombres;
        this.Cedula = Cedula;
        this.Descripcion = Descripcion;
        this.Total = Total;
        this.Tarjeta = Tarjeta;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getCedula() {
        return Cedula;
    }

    public void setCedula(String Cedula) {
        this.Cedula = Cedula;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getTotal() {
        return Total;
    }

    public void setTotal(String Total) {
        this.Total = Total;
    }

    public String getTarjeta() {
        return Tarjeta;
    }

    public void setTarjeta(String Tarjeta) {
        this.Tarjeta = Tarjeta;
    }

   




}
