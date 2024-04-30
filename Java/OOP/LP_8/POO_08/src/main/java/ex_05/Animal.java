/*
5)Crie  uma  classe  Animal  contendo  os  atributos tipoe varCor. 
Adicione  os  métodos set, get,  umconstrutor  para  classe  que  
inicialize  as  variáveis  de  instância,  e  um método toString
pararetornar o varTipo e a varCor do animal.Construa uma classe Cachorroque 
estenda a classe Animale tenha os atributos varNome  e  raça  do  cachorro,
construa  para  classe  os  métodos set,  get,um construtore ummétodo 
toString para classe cachorro.Construa uma classe Cockerque estenda a 
classe Cachorroe tenha os atributos varBoolTosa  do  varTipo  boolean  
(falso,  verdadeiro),  com  um  método  setTosa  e  um  métodoprecisaTosa
que deve retornar apenas se precisa ou não de varBoolTosa.Escreva  umprograma 
de  teste  (classe  CockerTeste)  adequado  para  esta  classe testando 
os métodos da classe e os métodos herdados. Utilize para entrada e saída 
dedados a classe JOptionPane.
 */
package ex_05;
import javax.swing.JOptionPane;
/**
 *
 * @author J&L
 */
class Animal {
    private String varTipo;
    private String varCor;
    
    public Animal(String tipo, String cor) {
        this.varTipo = tipo;
        this.varCor = cor;
    }

    public String getVarTipo() {
        return varTipo;
    }

    public void setVarTipo(String varTipo) {
        this.varTipo = varTipo;
    }

    public String getVarCor() {
        return varCor;
    }

    public void setVarCor(String varCor) {
        this.varCor = varCor;
    }

    @Override
    public String toString() {
        return "Tipo: " + varTipo + ", Cor: " + varCor;
    }
}

class Cachorro extends Animal {
    private String varNome;
    private String varRaca;

    public Cachorro(String tipo, String cor, String nome, String raca) {
        super(tipo, cor);
        this.varNome = nome;
        this.varRaca = raca;
    }

    public String getVarNome() {
        return varNome;
    }

    public void setVarNome(String varNome) {
        this.varNome = varNome;
    }

 
    public String getVarRaca() {
        return varRaca;
    }

    public void setVarRaca(String varRaca) {
        this.varRaca = varRaca;
    }

    @Override
    public String toString() {
        return super.toString() + ", Nome: " + varNome + ", Raça: " + varRaca;
    }
}

class Cocker extends Cachorro {
    private boolean varBoolTosa;

    public Cocker(String tipo, String cor, String nome, String raca, boolean tosa) {
        super(tipo, cor, nome, raca);
        this.varBoolTosa = tosa;
    }

    public void setVarBoolTosa(boolean varBoolTosa) {
        this.varBoolTosa = varBoolTosa;
    }

    public String precisaTosa() {
        if (varBoolTosa) {
            return "Precisa de tosa";
        } else {
            return "Não precisa de tosa";
        }
    }
}