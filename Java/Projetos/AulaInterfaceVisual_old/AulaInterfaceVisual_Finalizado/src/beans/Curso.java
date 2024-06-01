/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

/**
 *
 * @author J&L
 */
public class Curso {
    private int id;
    private String nomecurso;
    private String nivel;
    private int duracao;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomecurso() {
        return nomecurso;
    }

    public void setNomecurso(String nomecurso) {
        this.nomecurso = nomecurso;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    public int getDuracao() {
        return duracao;
    }

    public void setDuracao(int duracao) {
        this.duracao = duracao;
    }
    
    /*
    o método toString é a representação do objeto em string.
    significa que quando um objeto do tipo "curso" for printado,
    ele imprimio que estiver sendo retornado por esse metodo.
    */
    
    public String toString(){
        return this.nomecurso;
    }
    
    //criar um metodo chamado equals, no metodo eu defino qual é a regra a seguir
    //para comparar 2 objetos do tipo "Curso".
    //os dois objetos serao iguais , se o ID de ambos forem iguais
    public boolean equals(Object objeto){
        Curso c=(Curso) objeto;
        if(this.id==c.getId()){
            return true;
        }else{
            return false;
        }
        
    }
    
}
