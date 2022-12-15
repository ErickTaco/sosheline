/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import Modelo.Carrito;
import Modelo.Factura;
import Modelo.FacturaDAO;
import Modelo.Prenda;
import Modelo.PrendasDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ServletControlador", urlPatterns = {"/ServletControlador"})
public class ServletControlador extends HttpServlet {

    PrendasDAO prendasdao = new PrendasDAO();
    Prenda p = new Prenda();
    List<Prenda> prendas = new ArrayList<>();

    List<Carrito> listaCarrito = new ArrayList<>();
    int item;
    double total = 0.0;
    int cantidad = 1;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        prendas = prendasdao.listar();

        if (accion != null) {
            switch (accion) {
                case "agregarCarrito":
                    this.Itemcarrito(request, response);
                    break;
                case "carrito":
                    HttpSession sesion= request.getSession();
                    sesion.setAttribute("listarCarrito", listaCarrito);
                    sesion.setAttribute("total", this.calcularTotal(listaCarrito));
                    
                    response.sendRedirect("camioneta.jsp");
                    break;
                 
                case "regresar":

                    break;

                default:
                    this.mostrarProductos(request, response);
            }
        } else {
            this.mostrarProductos(request, response);
        }
    }

    private double calcularTotal(List<Carrito> carritos) {
        total = 0.0;
        for (Carrito carrito : carritos) {
            total = total + carrito.getPrecio();
        }
        return total;
    }

    private void Itemcarrito(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        p = prendasdao.listarId(id);
        item = item + 1;
        Carrito car = new Carrito();
        car.setItem(item);
        car.setIdPrenda(p.getIdPrenda());
        car.setDescripcion(p.getDescripcion());
        car.setTalla(p.getTalla());
        car.setPrecio(p.getPrecio());
        car.setCantidad(p.getCantidad());
        listaCarrito.add(car);
        System.out.println(listaCarrito);
        response.sendRedirect("pagina.jsp");
        HttpSession sesion = request.getSession();
        sesion.setAttribute("contador", listaCarrito.size());

    }

    private void mostrarProductos(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Prenda> prendas;
        prendas = new PrendasDAO().listar();
        
        response.sendRedirect("pagina.jsp");
        HttpSession sesion = request.getSession();
        sesion.setAttribute("prendas", prendas);
        
    }


    
  
    
    
    
    
    
    
    
    
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
String accion=request.getParameter("accion");
    //evaluamos si la accion esta vacia 
if (accion != null) {
            switch (accion) {
                case "insertar":
                this.factura(request, response);
                    break;
                default:
                   
            }
        }
}





private void factura(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String nombres=request.getParameter("nombres");
    String cedula=request.getParameter("cedula");
  
   
    String descripcion=request.getParameter("descripcion");
    String pagar=request.getParameter("total");
    String tarjeta=request.getParameter("tarjeta");
    
    
Factura factura=new Factura(nombres, cedula, descripcion, pagar, tarjeta);
int registroModificados = new FacturaDAO().insertar(factura);

//actualizamos la lista de los prodcutos
    }







        
        
        
        
        
        
        
        
        
    

}
