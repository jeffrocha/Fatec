package TP01;

import java.util.Scanner;

/**
 *
 * @author lab04aluno
 */

/*.1) Em época de pouco dinheiro, os comerciantes estão procurando aumentar suas
vendas oferecendo desconto. Faça um programa que possa entrar com o nome
de um produto e seu valor unitário e calcular e exibir um novo valor com um
desconto de 9%.*/

public class Ex01 
{
    public static void main(String[] args) 
    {
        try (Scanner scanner = new Scanner(System.in)) 
        {
            System.out.print("Digite o nome do produto: ");
            String Var_NomeProduto = scanner.nextLine();
            
            System.out.print("Digite o valor do produto: R$");
            double Var_ValorPrododuto = scanner.nextDouble();
            
            double Var_ValorAjuste = Var_ValorPrododuto+((Var_ValorPrododuto /100)*9);
            
            System.out.println("\nProduto: " + Var_NomeProduto);
            System.out.print("Valor com ajuste de 9%: "); 
            System.out.printf("R$:%.2f\n", Var_ValorAjuste);//system.out.printf("R$%.2f", valorAumentado);
        }
    }
}
