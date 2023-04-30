/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gestion;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ahmed
 */
public class GestionNote {
    private Connection conn=null;
    private Statement stmt;
    private String sql = "";
    public GestionNote(){
         conn = Connexion.Connect();
        try {
            stmt =  conn.createStatement();
        } catch (SQLException e) {
            System.err.println("Erreur "+e.getMessage());
        }  
    }
    public  void Add(Note note){
         sql = "insert into note(code_eleve,code_fil,note) values('"+note.getCode_eleve()+
                 "','"+note.getCode_matiere()+ "','"+note.getNote()+"' )";
         try {
             System.out.println(sql);
            stmt.executeUpdate(sql);
        } catch (SQLException e) {
             System.err.println("Erreur insertion "+e.getMessage());
        }
    }
}
