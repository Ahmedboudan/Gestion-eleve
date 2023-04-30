
package gestion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Ahmed
 */
public class Connexion {
    public static String url="jdbc:mysql://localhost:3307/scolarite";
    public static String user="root";
    public static String password = "";
    public static Connection conn = null;
    
    public static Connection Connect(){
        if(conn==null){
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn= DriverManager.getConnection(url,user,password);
            } catch (Exception e) {
                System.out.println("Erreur du chargement du driver"+e.getMessage());
            }
        }
        return conn;
    }
    public static void Disconnect() throws SQLException{
        if(conn!=null){
            conn.close();
            conn = null;
        }
    }
    
}
