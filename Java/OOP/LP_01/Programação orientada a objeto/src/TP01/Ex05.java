package TP01;
import java.util.Scanner;
public class Ex05 {
    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            double Var_raio = Func_lerValor(scanner, "Digite o raio da lata de oleo(em metros): ");
            double Var_altura = Func_lerValor(scanner, "Digite a altura da lata de oleo:(em metros) ");
            double Var_volume = Func_calcularVolume(Var_raio, Var_altura);
            System.out.printf("O volume da lata de oleo e: %.2f ", Var_volume );
            System.out.println("m3");
        }
    }
    public static double Func_lerValor(Scanner scanner, String mensagem) {
        double valor;
        do {
            System.out.print(mensagem);
            while (!scanner.hasNextDouble()) {
                System.out.println("Por favor, insira um valor válido.");
                System.out.print(mensagem);
                scanner.next();
            }
            valor = scanner.nextDouble();
            if (valor <= 0) 
            {
                System.out.println("Por favor, insira um valor positivo.");
            }
        } while (valor <= 0);
        return valor;
    }
    public static double Func_calcularVolume(double Var_raio, double Var_altura) 
    {
        return Math.PI * Math.pow(Var_raio, 2) * Var_altura;
    }
}