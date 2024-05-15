package LP_2;

import java.util.Arrays;
import java.util.Scanner;

public class EX02 {
    public static void main(String[] args) 
    {
        try (Scanner scanner = new Scanner(System.in)) 
        {
            int[] Var_num1 = new int[3];
            for (int i = 0; i < 3; i++) 
            {
                System.out.print("Digite o número " + (i + 1) + ": ");
                Var_num1[i] = scanner.nextInt();
            }
            Arrays.sort(Var_num1);
            System.out.println("Os números em ordem crescente são:");
            for (int numero : Var_num1) {
                System.out.print(numero + " ");
            }
        }
    }
}
