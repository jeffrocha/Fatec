package LP_2;
import java.util.Scanner;

public class EX01 
{
    public static void main(String[] args) 
    {
        try (Scanner scanner = new Scanner(System.in)) 
        {
            System.out.print("Digite um valor inteiro: ");
            int Var_num1 = scanner.nextInt();
            
            if (Var_num1 %3 ==0)
            {
                System.out.println("O valor " + Var_num1 + " é multiplo de 3");
            } 
            else 
            {
                System.out.println("O valor " + Var_num1 + " não é multiplo de 3");
            }   
        }
    }
}
