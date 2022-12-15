/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;


import java.io.InputStream;

/**
 *
 * @author Usuario
 */
public class Prenda {
int idPrenda;
String descripcion;
String talla;
double precio;
int cantidad;
InputStream foto;

    public Prenda() {
    }

    public Prenda(int idPrenda, String descripcion, String talla, double precio, int cantidad) {
        this.idPrenda = idPrenda;
        this.descripcion = descripcion;
        this.talla = talla;
        this.precio = precio;
        this.cantidad = cantidad;
    }
    

    public Prenda(int idPrenda, String descripcion, String talla, double precio, int cantidad, InputStream foto) {
        this.idPrenda = idPrenda;
        this.descripcion = descripcion;
        this.talla = talla;
        this.precio = precio;
        this.cantidad = cantidad;
        this.foto = foto;
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

    public InputStream getFoto() {
        return foto;
    }

    public void setFoto(InputStream foto) {
        this.foto = foto;
    }



}
 