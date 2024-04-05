/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package RobozinZS;

import java.util.Scanner;
import beans.Calculadora;
import beans.Robo;

public class RobozinZS {    
    public static void main(String[] args) {

        Robo robo = new Robo(); // Cria um novo objeto Robo
        Calculadora calculadora = new Calculadora(robo); // Passa o objeto Robo para o construtor da Calculadora
        
        Scanner scanner = new Scanner(System.in);
        int opcao;
        
        System.out.println("Ola, sou o " + calculadora.getRobo().getNome());
        System.out.println("Estou com " + calculadora.getRobo().getBateria() + "% de bateria");

        while (calculadora.getRobo().getBateria() > 0) {
            System.out.println("Selecione a operacao desejada:");
            System.out.println("1. Somar");
            System.out.println("2. Subtrair");
            System.out.println("3. Multiplicar");
            System.out.println("4. Dividir");
            System.out.println("5. Sair");
            opcao = scanner.nextInt();

            double resultado;
            double numero1, numero2;

            switch (opcao) {
                case 1:
                    System.out.println("Digite o primeiro numero:");
                    numero1 = scanner.nextDouble();
                    System.out.println("Digite o segundo numero:");
                    numero2 = scanner.nextDouble();
                    resultado = calculadora.Somar(numero1, numero2);
                    System.out.println("\tResultado: " + resultado);
                    break;
                case 2:
                    System.out.println("Digite o primeiro numero:");
                    numero1 = scanner.nextDouble();
                    System.out.println("Digite o segundo numero:");
                    numero2 = scanner.nextDouble();
                    resultado = calculadora.Subtrair(numero1, numero2);
                    System.out.println("\tResultado: " + resultado);
                    break;
                case 3:
                    System.out.println("Digite o primeiro numero:");
                    numero1 = scanner.nextDouble();
                    System.out.println("Digite o segundo numero:");
                    numero2 = scanner.nextDouble();
                    resultado = calculadora.Multiplicar(numero1, numero2);
                    System.out.println("\tResultado: " + resultado);
                    break;
                case 4:
                    System.out.println("Digite o dividendo:");
                    numero1 = scanner.nextDouble();
                    System.out.println("Digite o divisor:");
                    numero2 = scanner.nextDouble();
                    resultado = calculadora.Dividir(numero1, numero2);
                    System.out.println("\tResultado: " + resultado);
                    break;
                case 5:
                    System.out.println("Encerrando programa.");
                    return;
                default:
                    System.out.println("Opção inválida.");
                    break;
            }

            calculadora.getRobo().setBateria(calculadora.getRobo().getBateria() - 1);
            System.out.println("\tAgora estou com " + calculadora.getRobo().getBateria() + "% de bateria\n");
        }
        System.out.println("Robo sem bateria, recarregue.");
    }
}
