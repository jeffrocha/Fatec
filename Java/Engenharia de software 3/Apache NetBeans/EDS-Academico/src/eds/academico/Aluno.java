package eds.academico;

/**
 *
 * @author J&L
 */
public class Aluno extends Pessoa{//Trás da classe pessoa
   private String ra;
   private Curso curso;//está fazendoa associação dentro da variavel curso puxando da classe Curso
   
public Aluno(){}
   public Aluno(String nome, String ra,Curso curso){
   super(nome);
   this.ra = ra;
   this.curso = curso;
   }
   
    public String getRa() {
        return ra;
    }

    public void setRa(String ra) {
        this.ra = ra;
    }

    public Curso getCurso() {
        return curso;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }
}

