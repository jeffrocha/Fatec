package LP_2;

import java.util.Scanner;

public class EX03 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o valor do produto: R$");
        double valorProduto = scanner.nextDouble();

        double taxaLucro = (valorProduto < 20.0) ? 0.45 : 0.30; // Condição, se o valor for menor que 20 ele aplicaram 0.45 se não 0.3
        double lucro = valorProduto * taxaLucro;

        double valorVenda = valorProduto + lucro;
        System.out.println("O valor de venda do produto é: R$" + valorVenda);

        scanner.close();
    }
}
