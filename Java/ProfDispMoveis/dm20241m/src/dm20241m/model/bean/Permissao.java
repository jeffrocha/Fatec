/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.model.bean;

/**
 *
 * @author J&L
 */
public class Permissao {
    private int id;
    private String permissao;

   
    private String descritivo;

    public Permissao(int id) {
        this.id = id;
    }
 public Permissao(String permissao) {
        this.permissao = permissao;
    }
    public Permissao(String permissao, String descritivo) {
        this.permissao = permissao;
        this.descritivo = descritivo;
    }

    public Permissao(int id, String permissao, String descritivo) {
        this.id = id;
        this.permissao = permissao;
        this.descritivo = descritivo;
    }

    public Permissao(int id, String permissao) {
        this.id = id;
        this.permissao = permissao;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPermissao() {
        return permissao;
    }

    public void setPermissao(String permissao) {
        this.permissao = permissao;
    }

    public String getDescritivo() {
        return descritivo;
    }

    public void setDescritivo(String descritivo) {
        this.descritivo = descritivo;
    }

    @Override
    public String toString() {
        return "Permissao{" + "id=" + id + ", permissao=" + permissao + ", descritivo=" + descritivo + '}';
    }

}
