package eds.academico;

/**
 *
 * @author J&L
 */
public class Curso {
//variaveis
    private String id,nome,periodo;
//construtor
    public Curso(String id, String nome, String periodo) {
        this.id = id;
        this.nome = nome;
        this.periodo = periodo;
    }
//getter setter
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }
    
    
}
