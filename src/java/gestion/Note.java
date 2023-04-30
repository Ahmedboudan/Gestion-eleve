/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gestion;

/**
 *
 * @author ahmed
 */
public class Note {
    private String  code_eleve;
    private String code_matiere;
    private double note ;

    public Note() {
    }
    
    public Note(String code_eleve, String code_matiere, double note) {
        this.code_eleve = code_eleve;
        this.code_matiere = code_matiere;
        this.note = note;
    }
    
    public String getCode_eleve() {
        return code_eleve;
    }

    public void setCode_eleve(String code_eleve) {
        this.code_eleve = code_eleve;
    }

    public String getCode_matiere() {
        return code_matiere;
    }

    public void setCode_matiere(String code_matiere) {
        this.code_matiere = code_matiere;
    }

    public double getNote() {
        return note;
    }

    public void setNote(double note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "Note{" + "code_eleve=" + code_eleve + ", code_matiere=" + code_matiere + ", note=" + note + '}';
    }
    
    
    
}
