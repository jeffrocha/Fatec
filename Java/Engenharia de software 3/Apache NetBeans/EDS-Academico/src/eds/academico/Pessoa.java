package eds.academico;

/**
 *
 * @author Denise
 * Classe de Generalização : Pessoa
 */
public class Pessoa {
  private String nome;

  public Pessoa(){this.nome = "Denise";}
  public Pessoa(String nome){this.nome = nome;}

  public String getNome(){return this.nome;}
  public void setNome(String nome){this.nome = nome;}
      
}
