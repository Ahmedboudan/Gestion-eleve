
package gestion;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ahmed
 */
public class GestionEleve {
  
    private Connection conn=null;
    private Statement stmt;
    private String sql = "";
    
    public GestionEleve(){
        conn = Connexion.Connect();
        try {
            stmt =  conn.createStatement();
        } catch (SQLException e) {
            System.err.println("Erreur "+e.getMessage());
        }  
    }
    public  void Add(Eleve eleve){
         sql = "insert into eleve(code,nom,prenom,niveau,code_fil) values('"+eleve.getCode()+
                 "','"+eleve.getNom()+ "','"+eleve.getPrenom()+"','"+
                 eleve.getNiveau()+"','"+eleve.getCode_fil()+"');";
         try {
             System.out.println(sql);
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
             System.err.println("Erreur insertion "+e.getMessage());
        }
    }
    public void Update(Eleve eleve){
        sql = "update eleve set nom = '"+eleve.getNom()+
                "' ,prenom = '"+eleve.getPrenom()+
                "' ,niveau = "+eleve.getNiveau()+
                " ,code_fil = '"+eleve.getCode_fil()+
                "' where code = '"+eleve.getCode()+"';";
        try {
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
             System.err.println("Erreur modification "+e.getMessage());
        }
    }
    public void Delete(Eleve eleve){
        sql = "delete from eleve where code = '"+eleve.getCode()+"' ;";
        try {
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
             System.err.println("Erreur suppression "+e.getMessage());
        }
    }
    public void delete(String code ){
        sql = "delete from eleve where code = '"+code+"' ;";
        try {
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
             System.err.println("Erreur suppression "+e.getMessage());
        }
    }
    public List<Eleve> all() throws SQLException{
        ResultSet rs=null ;
        List<Eleve> liste = new ArrayList<>();
        sql = "select * from eleve";
        try {
            rs = stmt.executeQuery(sql);
        } catch (SQLException ex) {
            System.err.println("Erreur de lister "+ex.getMessage());
        }
        while(rs.next()){
            liste.add(new Eleve(
                       rs.getString(2),
                       rs.getString(3),
                     rs.getString(4),
                     rs.getInt(5),
                   rs.getString(6)));
        }
        return liste;  
    }
      public Eleve find(String code){
        sql = "select * from eleve where code = '"+code+"' ";
        ResultSet rs ;
        try {
            rs = stmt.executeQuery(sql);
            if(rs.next())
                return new Eleve(
                       rs.getString(2),
                       rs.getString(3),
                     rs.getString(4),
                     rs.getInt(5),
                   rs.getString(6)
                );
        } catch (SQLException e) {
            System.err.println("Erreur de recherche d'un eleve "+e.getMessage());
        }
        return null;
    }
    public Eleve find(Eleve eleve){
        if(eleve!=null){
            sql = "select * from eleve where code = '"+eleve.getCode()+"' ";
            ResultSet rs ;
            try {
                rs = stmt.executeQuery(sql);
                if(rs.next())
                    return new Eleve(
                           rs.getString(2),
                           rs.getString(3),
                         rs.getString(4),
                         Integer.parseInt(rs.getString(5)),
                       rs.getString(6)
                    );
            } catch (SQLException e) {
                System.err.println("Erreur de recherche d'un eleve "+e.getMessage());
            }
        } 
        return null;
    }
}
