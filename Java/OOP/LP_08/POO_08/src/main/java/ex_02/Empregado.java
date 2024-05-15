/*
A  fim  de  representar  empregados  em  uma  firma,  crie  uma  classe 
chamada Empregado queinclui as três informações a seguir como atributos:
• um primeiro nome,
• um sobrenome,
• um salário mensal.
Sua  classe  deve  ter  um  construtor  que  inicializa  os  três  atributos.
Forneça  um método sete getpara  cadaatributo.  Se  o  salário  mensal  não 
for positivo, configure-o como 0.Escreva  um  aplicativo  de  teste  
quedemonstra  as  capacidades  da  classe.  Crie duas instâncias da classe e 
exiba o salário anual de cada instância.Então  dê  a  cada  empregado  um  
aumento  de  10%  e  exiba  novamente  o  salário anual de cada empregado.
 */
package ex_02;

/**
 *
 * @author J&L
 */
public class Empregado {
    private String varNome;
    private String varSobrenome;
    private double varSalario;

    public Empregado(String primeiroNome, String sobrenome, double salarioMensal) {
        this.varNome = primeiroNome;
        this.varSobrenome = sobrenome;
        if (salarioMensal > 0)
            this.varSalario = salarioMensal;
        else
            this.varSalario = 0;
    }

    public String getVarNome() {
        return varNome;
    }

    public void setVarNome(String varNome) {
        this.varNome = varNome;
    }

    public String getVarSobrenome() {
        return varSobrenome;
    }

    public void setVarSobrenome(String varSobrenome) {
        this.varSobrenome = varSobrenome;
    }

    public double getVarSalario() {
        return varSalario;
    }

    public void setVarSalario(double varSalario) {
        if (varSalario > 0)
            this.varSalario = varSalario;
        else
            this.varSalario = 0;
    }

    public double getSalarioAnual() {
        return varSalario * 12;
    }

    public void aplicarAumento(double percentual) {
        varSalario *= (1 + percentual / 100);
    }
}
