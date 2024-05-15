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
import javax.swing.JOptionPane;

/**
 *
 * @author J&L
 */

public class TesteEmpregado {
    public static void main(String[] args) {
        String primeiroNomeEmpregado1 = JOptionPane.showInputDialog("Digite o primeiro nome do empregado 1:");
        String sobrenomeEmpregado1 = JOptionPane.showInputDialog("Digite o sobrenome do empregado 1:");
        String salarioMensalStr1 = JOptionPane.showInputDialog("Digite o salário mensal do empregado 1:");
        salarioMensalStr1 = salarioMensalStr1.replace(",", ".");
        double salarioMensal1 = Double.parseDouble(salarioMensalStr1);

        Empregado empregado1 = new Empregado(primeiroNomeEmpregado1, sobrenomeEmpregado1, salarioMensal1);

        String primeiroNomeEmpregado2 = JOptionPane.showInputDialog("Digite o primeiro nome do empregado 2:");
        String sobrenomeEmpregado2 = JOptionPane.showInputDialog("Digite o sobrenome do empregado 2:");
        String salarioMensalStr2 = JOptionPane.showInputDialog("Digite o salário mensal do empregado 2:");
        salarioMensalStr2 = salarioMensalStr2.replace(",", ".");
        double salarioMensal2 = Double.parseDouble(salarioMensalStr2);

        Empregado empregado2 = new Empregado(primeiroNomeEmpregado2, sobrenomeEmpregado2, salarioMensal2);
   
        String mensagem = "Salário anual do empregado 1: " + empregado1.getSalarioAnual() + "\n" +
                          "Salário anual do empregado 2: " + empregado2.getSalarioAnual();
        
        JOptionPane.showMessageDialog(null, mensagem);

        empregado1.aplicarAumento(10);
        empregado2.aplicarAumento(10);

        mensagem = "Salário anual do empregado 1 após aumento: " + empregado1.getSalarioAnual() + "\n" +
                   "Salário anual do empregado 2 após aumento: " + empregado2.getSalarioAnual();

        JOptionPane.showMessageDialog(null, mensagem);
    }
}


