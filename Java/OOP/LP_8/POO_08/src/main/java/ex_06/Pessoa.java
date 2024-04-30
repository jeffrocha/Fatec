/*
6)Implemente  a  classe Pessoapossuindo nome,  idade,  altura  e  sexo como 
variáveis de instância. Construa os métodos set e getpara cada variável 
de instância e  um  construtor  para  a  classe  para  inicializar  as 
variáveis  de  instância.  Construa depois  uma  classe Empregadoque  deve
ser  uma  subclasse  da  classe PessoaFatec Zona Sul 
Prof. Ma. Luciana Zapparolli(herança),  adicionandoum  novo  construtor  e 
uma  variável  de  instância salárioe  os métodos set e getpara o novo atributo.
Construa  um  método obterLucrosque  devolva  o  lucro  (salário)  do  
empregado. Escreva umprograma de teste (classe EmpregadoTeste) adequado para 
esta classe testando osmétodos  da  classe  e os  métodos  herdados.  Utilize
para entrada  e  saída de dados a classeJOptionPane.
 */
package ex_06;
/**
 *
 * @author J&L
 */
public class Pessoa {
    private String varNome;
    private int varIdade;
    private double varAltura;
    private char varSexo;

    public Pessoa(String nome, int idade, double altura, char sexo) {
        this.varNome = nome;
        this.varIdade = idade;
        this.varAltura = altura;
        this.varSexo = sexo;
    }

    public String getVarNome() {
        return varNome;
    }

    public void setVarNome(String varNome) {
        this.varNome = varNome;
    }

    public int getVarIdade() {
        return varIdade;
    }

    public void setVarIdade(int varIdade) {
        this.varIdade = varIdade;
    }

    public double getVarAltura() {
        return varAltura;
    }

    public void setVarAltura(double varAltura) {
        this.varAltura = varAltura;
    }

    public char getVarSexo() {
        return varSexo;
    }

    public void setVarSexo(char varSexo) {
        this.varSexo = varSexo;
    }
}

