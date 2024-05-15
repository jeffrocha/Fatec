package LP_2;

import java.util.Scanner;

public class EX04 
{
     public static void main(String[] args) 
     {
         try (Scanner scanner = new Scanner(System.in)) 
         {
             System.out.print("Digite a idade da pessoa: ");
             int Var_idade = scanner.nextInt();
             
             String Var_ClasseEleitoral;
             if (Var_idade < 16) 
             {
                 Var_ClasseEleitoral = "Não-eleitor";
             } 
             else if (Var_idade >= 18 && Var_idade <= 65) 
             {
                 Var_ClasseEleitoral = "Eleitor obrigatório";
             } 
             else 
             {
                 Var_ClasseEleitoral = "Eleitor facultativo";
             }
             System.out.println("A classe eleitoral da pessoa é: " + Var_ClasseEleitoral);
         }
    }
}

