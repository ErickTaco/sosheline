
package Modelo;
import conexion.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
public class PrendasDAO {
Connection con;
Conexion cn=new Conexion();
PreparedStatement ps;
ResultSet rs;






public Prenda listarId(int idPrenda){
    String sql="select * from prendas where idPrenda="+idPrenda;
    Prenda p=new Prenda();
      try {
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while (rs.next()) {
            p.setIdPrenda(rs.getInt(1));
            p.setDescripcion(rs.getString(2));
            p.setTalla(rs.getString(3));
            p.setPrecio(rs.getDouble(4));
            p.setCantidad(rs.getInt(5));
            
            
        }
    } catch (Exception e) {
    }
return p;
    
}









public List listar(){
List<Prenda> prendas=new ArrayList();
String sql="select * from prendas";
    try {
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        while (rs.next()) {
            Prenda p=new Prenda();
            p.setIdPrenda(rs.getInt(1));
            p.setDescripcion(rs.getString(2));
            p.setTalla(rs.getString(3));
            p.setPrecio(rs.getDouble(4));
            p.setCantidad(rs.getInt(5));
            p.setFoto(rs.getBinaryStream(6));
            prendas.add(p);
        }
    } catch (Exception e) {
    }
return prendas;

}



public void listarImg(int id, HttpServletResponse response){
String sql="select * from prendas where idPrenda="+id;
    InputStream inputStream=null;
    OutputStream outputStream=null;
    BufferedInputStream bufferedInputStream=null;
    BufferedOutputStream bufferedOutputStream=null;
    try {
        outputStream=response.getOutputStream();
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        rs=ps.executeQuery();
        
        if(rs.next()){
            inputStream=rs.getBinaryStream("fotos");
        }
        
        bufferedInputStream=new BufferedInputStream(inputStream);
        
        bufferedOutputStream=new BufferedOutputStream(outputStream);
        
        int i=0;
        
        while ((i=bufferedInputStream.read())!=-1) {
        
           bufferedOutputStream.write(i);
            
        }
    } catch (Exception e) {
    }
}




}




