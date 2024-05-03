/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.model.bean;

/**
 *
 * @author J&L
 */
public class UsuarioPermissao {
    private int id;
    private int idU;
    private int idP;
    private String obs;
    private Usuario usu;
    private Permissao per;

    public UsuarioPermissao(String obs) {
        this.id = id;
        this.idU = idU;
        this.idP = idP;
        this.obs = obs;
        this.usu = usu;
        this.per = per;
    }

    public UsuarioPermissao(int id, int idU, int idP, String obs) {
        this.id = id;
        this.idU = idU;
        this.idP = idP;
        this.obs = obs;
    }

    public UsuarioPermissao(int idU, int idP, String obs) {
        this.idU = idU;
        this.idP = idP;
        this.obs = obs;
    }

    public UsuarioPermissao(int id, String obs) {
        this.id = id;
        this.obs = obs;
    }
    

    public UsuarioPermissao(int id) {
        this.id = id;
    }

    public UsuarioPermissao(int id, int idU, int idP) {
        this.id = id;
        this.idU = idU;
        this.idP = idP;
    }

    public UsuarioPermissao(Usuario usu) {
        this.usu = usu;
    }

    public UsuarioPermissao(Permissao per) {
        this.per = per;
    }

    public UsuarioPermissao(Usuario usu, Permissao per) {
        this.usu = usu;
        this.per = per;
    }

    public UsuarioPermissao(int id, Usuario usu, Permissao per) {
        this.id = id;
        this.usu = usu;
        this.per = per;
    }

    public UsuarioPermissao(int id, int idU, int idP, Usuario usu, Permissao per) {
        this.id = id;
        this.idU = idU;
        this.idP = idP;
        this.usu = usu;
        this.per = per;
    }

    public UsuarioPermissao(int id, Usuario usu) {
        this.id = id;
        this.usu = usu;
    }

    public UsuarioPermissao(int id, Permissao per) {
        this.id = id;
        this.per = per;
    }

    public UsuarioPermissao(int idU, int idP) {
        this.idU = idU;
        this.idP = idP;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdU() {
        return idU;
    }

    public void setIdU(int idU) {
        this.idU = idU;
    }

    public int getIdP() {
        return idP;
    }

    public void setIdP(int idP) {
        this.idP = idP;
    }

    public Usuario getUsu() {
        return usu;
    }

    public void setUsu(Usuario usu) {
        this.usu = usu;
    }

    public Permissao getPer() {
        return per;
    }

    public void setPer(Permissao per) {
        this.per = per;
    }
    
        public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }
    

    @Override
    public String toString() {
        return "UsuarioPermissao{" + "id=" + id + ", idU=" + idU + ", idP=" + idP + ", obs=" + obs + ", usu=" + usu + ", per=" + per + '}';
    }

}
