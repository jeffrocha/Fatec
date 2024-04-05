package TP01;
import java.util.Scanner;

/**
 *
 * @author J&L
 */

/*4. Faça um programa que leia uma temperatura em graus Centígrados e apresente-a convertida em graus Fahrenheit. A fórmula de conversão é:
F = (9 * C + 160) / 5, onde F é a temperatura em Fahrenheit e C em graus Centígrados.*/

public class Ex04 
{
    public static void main(String[] args) 
    {
        try (Scanner scanner = new Scanner(System.in)) 
        {    
        System.out.print("Digite a temperatura em graus Celsius: ");
        double Var_celsius = scanner.nextDouble();
        double Var_fahrenheit = (9 * Var_celsius + 160) / 5;
        System.out.println("A temperatura em graus Fahrenheit é: " + Var_fahrenheit);
        }
    }
}