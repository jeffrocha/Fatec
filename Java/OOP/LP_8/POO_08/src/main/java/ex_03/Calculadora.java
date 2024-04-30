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

import javax.swing.JOptionPane;

/**
 *
 * @author J&L
 */
public class Calculadora {
    private double varNum1;
    private double varNum2;
    private char varCharOperacao;

    public Calculadora(double num1, double num2, char operacao) {
        this.varNum1 = num1;
        this.varNum2 = num2;
        this.varCharOperacao = operacao;
    }

    public double calcular() {
        double varResultado = 0.0;

        switch (varCharOperacao) {
            case '+':
                varResultado = varNum1 + varNum2;
                break;
            case '-':
                varResultado = varNum1 - varNum2;
                break;
            case '*':
                varResultado = varNum1 * varNum2;
                break;
            case '/':
                if (varNum2 != 0) {
                    varResultado = varNum1 / varNum2;
                } else {
                    System.out.println("Não é possivel realizar Divisão por zero!");
                }
                break;
            default:
                System.out.println("Operação inválida! digite uma operação valida( + , - , * ou / )");
        }

        return varResultado;
    }

    public void funcImprimirResultado() {
        double VarResultImprimir = calcular();
        JOptionPane.showMessageDialog(null, "Resultado: " + VarResultImprimir);
    }
}

