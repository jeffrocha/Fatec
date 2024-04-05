/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.model.bean;

/**
 *
 * @author J&L
 */
public class Cadastro {
    
    private int id;
    private String nome;
    private String sobrenome;
    private String setor;

    public Cadastro(int id) {
    this.id = id;
}

    public Cadastro(String nome) {
        this.nome = nome;
    }
    
    
    public Cadastro(int id, String nome, String sobrenome, String setor) {
        this.id = id;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.setor = setor;
    }
    
    public Cadastro() {
        // Construtor padrão vazio
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

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getSetor() {
        return setor;
    }

    public void setSetor(String setor) {
        this.setor = setor;
    }

    @Override
    public String toString() {
        return "Cadastro{" + "id=" + id + ", nome=" + nome + ", sobrenome=" + sobrenome + ", setor=" + setor + '}';
    }
    
}
