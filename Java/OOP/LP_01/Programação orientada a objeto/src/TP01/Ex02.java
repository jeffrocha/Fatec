package TP01;

import java.util.Scanner;

/**
 *
 * @author lab04aluno
 */

/*2) Para vários tributos, a base de cálculo é o salário mínimo. Fazer um programa
que leia o valor do salário mínimo e o valor do salário de uma pessoa. Calcular
e mostrar quantos salários mínimos ela ganha.
*/

public class Ex02 
{
    public static void main(String[] args) 
    {
        try (Scanner scanner = new Scanner(System.in)) 
        {
        
        System.out.print("Digite o valor do salário mínimo: ");
        double salarioMinimo = scanner.nextDouble();
        
        System.out.print("Digite o salário de cálculo: ");
        double salarioCalculo = scanner.nextDouble();
        
        double quantidadeSalariosMinimos = salarioCalculo / salarioMinimo;
        
        System.out.printf("Quantidade de salários mínimos: %.2f\n", quantidadeSalariosMinimos);
        
        double porcentagemSalarioMinimo = (salarioCalculo / salarioMinimo) * 100;
        System.out.printf("Porcentagem do salário em relação ao salário mínimo: %.2f%%\n", porcentagemSalarioMinimo);
        }
    }
}