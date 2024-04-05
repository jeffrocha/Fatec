/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.model.bean;

/**
 *
 * @author J&L
 */
public class CadastroUsuario {
    private int id;
    private int idC;
    private int idU;
    private String obs;

    public CadastroUsuario(int id) {
        this.id = id;
    }

    public CadastroUsuario(String obs) {
        this.obs = obs;
    }

    public CadastroUsuario(int idC, int idU, String obs) {
        this.idC = idC;
        this.idU = idU;
        this.obs = obs;
    }

    public CadastroUsuario(int id, int idC, int idU, String obs) {
        this.id = id;
        this.idC = idC;
        this.idU = idU;
        this.obs = obs;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdC() {
        return idC;
    }

    public void setIdC(int idC) {
        this.idC = idC;
    }

    public int getIdU() {
        return idU;
    }

    public void setIdU(int idU) {
        this.idU = idU;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }

    @Override
    public String toString() {
        return "CadastroUsuario{" + "id=" + id + ", idC=" + idC + ", idU=" + idU + ", obs=" + obs + '}';
    }
    
}
