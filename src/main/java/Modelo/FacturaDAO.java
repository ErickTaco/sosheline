package Modelo;
import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;


public class FacturaDAO {

    //private static final String SQL_SELECT = "SELECT * FROM factura";
    private static final String SQL_INSERT = "INSERT INTO Factura (Nombres,Cedula,Descripcion,Total,Tarjeta) VALUES(?,?,?,?,?)";
    
    
  
         public int insertar(Factura factura){
            Connection conn = null;
            PreparedStatement stmt = null;

            int rows=0;
            try {
            conn= Conexion.getConnectio();
            stmt = conn.prepareStatement(SQL_INSERT);
  
            stmt.setString(1, factura.getNombres());
            stmt.setString(2, factura.getCedula());
          
            stmt.setString(3, factura.getDescripcion());
            stmt.setString(4, factura.getTotal());
            stmt.setString(5, factura.getTarjeta());
            
            rows = stmt.executeUpdate();
             
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
            
             Conexion.close(stmt);
             Conexion.close(conn);
        }
        return rows;
    }
    
       
       
       
             
       
       
       
       
       
}
