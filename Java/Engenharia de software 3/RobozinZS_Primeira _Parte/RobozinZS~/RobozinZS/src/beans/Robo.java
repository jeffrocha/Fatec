
package beans;


public class Robo {
    
    //variaveis
    private String nome,dtfab;
    private int bateria;
    
    
//construtor
    
public Robo(String nome, String dtfab, int bateria){
    this.nome = nome;
    this.dtfab = dtfab;
    this.bateria = bateria;
}

    public Robo() {
        this("Robozinzs", "20/03/24", 4);
    }
//getter e setter
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDtfab() {
        return dtfab;
    }

    public void setDtfab(String dtfab) {
        this.dtfab = dtfab;
    }

    public int getBateria() {
        return bateria;
    }

    public void setBateria(int bateria) {
        this.bateria = bateria;
    }

}

