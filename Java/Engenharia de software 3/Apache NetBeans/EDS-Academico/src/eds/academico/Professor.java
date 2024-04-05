package eds.academico;

/**
 *
 * @author J&L
 */
public class Professor extends Pessoa {//extends trás da classe pessoa
    private String rf;
    private int titulacao;
    
    //construtor

    public Professor(String rf, int titulacao, String nome) {
        super(nome);
        this.rf = rf;
        this.titulacao = titulacao;
    }
    
    //getter e setter

    public String getRf() {
        return rf;
    }

    public void setRf(String rf) {
        this.rf = rf;
    }

    public int getTitulacao() {
        return titulacao;
    }

    public void setTitulacao(int titulacao) {
        this.titulacao = titulacao;
    }
    
  
}