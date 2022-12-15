package Modelo;


import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;
//import org.apache.commons.dbcp2.BasicDataSou        
/**
 *
 * @author Usuario
 */
public class Conexion {
    private static final String JDBC_URL="jdbc:mysql://localhost:3306/soshelina?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private static final String JDBC_USER="root";
    private static final String JDBC_PASSWORD="";
   //Creamos metodo para obtener el pull de conexiones
    
    public static DataSource getDataSource(){
        BasicDataSource ds = new BasicDataSource();
         ds.setUrl(JDBC_URL);
         ds.setUsername(JDBC_USER);
         ds.setPassword(JDBC_PASSWORD);
         //sirve para limitar los numers de usuarios a conectarse
         ds.setInitialSize(50);
        return ds;
    }
   //Metodo para obtener la conexion
    public static Connection getConnectio() throws SQLException{
        return getDataSource().getConnection();
    }
   //Creamos el metodo para crear la conexion del ResultSet
    public static void close(ResultSet rs){
        try {
            rs.close();
        } catch (SQLException ex) {
         ex.printStackTrace(System.out);
        }
    }
   //Creamos un metodo para cerrar nuestro PreparedStatement
    public static void close(PreparedStatement stmt){
        try {
            stmt.close();
        } catch (SQLException ex) {
          ex.printStackTrace(System.out);
        }
    }
   //Metodo para cerrar la conexion
    public static void close(Connection conn){
         try {
            conn.close();
        } catch (SQLException ex) {
          ex.printStackTrace(System.out);
        }
    }
    
}
