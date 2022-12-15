package Modelo;

/**
 *
 * @author janet
 */
public class Carrito {
int item;
int idPrenda;
String descripcion;
String talla;
double precio;
int cantidad;

    public Carrito() {
    }

    public Carrito(int item, int idPrenda, String descripcion, String talla, double precio, int cantidad) {
        this.item = item;
        this.idPrenda = idPrenda;
        this.descripcion = descripcion;
        this.talla = talla;
        this.precio = precio;
        this.cantidad = cantidad;
    }

    public int getItem() {
        return item;
    }

    public void setItem(int item) {
        this.item = item;
    }

    public int getIdPrenda() {
        return idPrenda;
    }

    public void setIdPrenda(int idPrenda) {
        this.idPrenda = idPrenda;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getTalla() {
        return talla;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
    
}
