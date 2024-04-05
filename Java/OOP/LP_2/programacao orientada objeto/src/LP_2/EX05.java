package LP_2;
import java.util.Scanner;

public class EX05 
{
    public static void main(String[] args) 
    {
        try (Scanner scanner = new Scanner(System.in)) 
        {
            System.out.print("Digite o nome da pessoa: ");
            String Var_Nome = scanner.nextLine();
            
            System.out.print("Digite a idade da pessoa: ");
            int Var_Idade = scanner.nextInt();
            
            double Var_Mens = Func_CalcMens(Var_Idade);
            

            System.out.printf("Caro(a) %s, o valor da mensalidade do plano de saúde é: R$%.2f\n", Var_Nome, Var_Mens);
        }
    }
    public static double Func_CalcMens(int Var_Idade) 
    {
        double[] Var_Preco = {30.00, 60.00, 120.00, 150.00, 250.00, 400.00};
        int[] Var_faixa = {10, 29, 45, 59, 65};

        for (int i = 0; i < Var_faixa.length; i++) 
        {
            if (Var_Idade <= Var_faixa[i]) 
            {
                return Var_Preco[i];
            }
        }
        return Var_Preco[Var_faixa.length];
    }
}