/*
3)Escreva  uma  classe  em  Java  que  simule  umacalculadora  bem  simples. 
Essa classe deve ter como atributos duas variáveis double e um char. 
Deve possuir um construtor    que    recebe    como    parâmetro    dois    
números    e    um    caracter, Fatec Zona Sul 
Prof. Ma. Luciana Zapparollicorrespondente a uma das operações básicas 
(+, -, *, /). Deve ter um método paracalcular  a  operação  desejada  e  um  
para  imprimir  o  resultado.  O  programa  deve considerar  divisões  por  
zero  como  sendo  erros,  e  imprimir  uma  mensagem adequada.
 */
package ex_03;

/**
 *
 * @author J&L
 */
import javax.swing.JOptionPane;

public class TesteCalculadora {
    public static void main(String[] args) {

        String num1Str = JOptionPane.showInputDialog("Digite o primeiro número:");
        double varNum1 = Double.parseDouble(num1Str);

        String num2Str = JOptionPane.showInputDialog("Digite o segundo número:");
        double varNum2 = Double.parseDouble(num2Str);

        String operacaoStr = JOptionPane.showInputDialog("Digite a operação (+, -, *, /):");
        char varCharOperacao = operacaoStr.charAt(0);

        Calculadora calculadora = new Calculadora(varNum1, varNum2, varCharOperacao);

        calculadora.funcImprimirResultado();
    }
}
