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
public class Empregado extends Pessoa {
    private double varSalario;

    public Empregado(String nome, int idade, double altura, char sexo, double salario) {
        super(nome, idade, altura, sexo);
        this.varSalario = salario;
    }

    public double getVarSalario() {
        return varSalario;
    }

    public void setVarSalario(double varSalario) {
        this.varSalario = varSalario;
    }

    public double obterLucros() {
        return varSalario;
    }
}


