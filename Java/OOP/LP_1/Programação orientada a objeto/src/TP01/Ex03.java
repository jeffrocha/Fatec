package TP01;

import java.util.Scanner;

/**
 *
 * @author J&L
 */

/* 3) Faça um programa que leia dois valores e informe a média entre eles. (use float como tipo de dado).*/
public class Ex03 
{
    public static void main(String[] args) 
    {
        try (Scanner scanner = new Scanner(System.in)) 
        {
            System.out.print("Digite o primeiro valor: ");
            float Var_PrimeiroValor = scanner.nextFloat();
            
            System.out.print("Digite o segundo valor: ");
            float Var_SegundoValor = scanner.nextFloat();
            
            float Var_Media = (Var_PrimeiroValor + Var_SegundoValor) / 2;
            
            System.out.println("A média entre os dois valores é: " + Var_Media);
        }
    }
}
  

