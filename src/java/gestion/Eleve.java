
package gestion;

/**
 *
 * @author Ahmed
 */
public class Eleve {
    private String code;
    private String nom;
    private String prenom;
    private int niveau;
    private String code_fil;
    
    public Eleve(){
        
    }

    public Eleve(String code, String nom, String prenom, int niveau, String code_fil) {
        this.code = code;
        this.nom = nom;
        this.prenom = prenom;
        this.niveau = niveau;
        this.code_fil = code_fil;
    }

    @Override
    public String toString() {
        return "Eleve{" + "code=" + code + ", nom=" + nom + ", prenom=" + prenom + ", niveau=" + niveau + ", code_fil=" + code_fil + '}';
    }
    

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public int getNiveau() {
        return niveau;
    }

    public void setNiveau(int niveau) {
        this.niveau = niveau;
    }

    public String getCode_fil() {
        return code_fil;
    }

    public void setCode_fil(String code_fil) {
        this.code_fil = code_fil;
    }
    
    
}
