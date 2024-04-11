/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.model.bean;

/**
 *
 * @author lab04aluno
 */
public class Sistema {
    
    private int id;
    private String nome;
    private String servidor;
    private String versao;
    private String status;

    public Sistema(int id) {
        this.id = id;
    }

    public Sistema(String nome) {
        this.nome = nome;
    }

    public Sistema(String nome, String servidor, String versao, String status) {
        this.nome = nome;
        this.servidor = servidor;
        this.versao = versao;
        this.status = status;
    }

    public Sistema(int id, String nome, String servidor, String versao, String status) {
        this.id = id;
        this.nome = nome;
        this.servidor = servidor;
        this.versao = versao;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getServidor() {
        return servidor;
    }

    public void setServidor(String servidor) {
        this.servidor = servidor;
    }

    public String getVersao() {
        return versao;
    }

    public void setVersao(String versao) {
        this.versao = versao;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Sistema{" + "id=" + id + ", nome=" + nome + ", servidor=" + servidor + ", versao=" + versao + ", status=" + status + '}';
    }
    
    
    
}
