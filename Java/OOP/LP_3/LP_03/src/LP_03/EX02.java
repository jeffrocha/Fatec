/*2) Um programa que imprima até o “n” termo a seqüência de Fibonacci. Série: 1,1,2,3,5,8,13,21.......
Por exemplo, imprimir até o 6º termo: 1, 1, 2, 3, 5, 8*/

package LP_03;

import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

public class EX02 {
    public static void main(String[] args) {
        int Var_Num = Func_obterNumero("Digite o número de termos da sequência Fibonacci:");

        if (Var_Num == 0) {
            JOptionPane.showMessageDialog(null, "Não há termos para exibir.");
            return;
        }
        StringBuilder fibonacci = new StringBuilder("Sequência de Fibonacci até o " + Var_Num + "º termo:\n");
        int Var_A = 1;
        int Var_B = 1;
        fibonacci.append(Var_A).append(" \n").append(Var_B);
        for (int i = 2; i < Var_Num; i++) {
            int Var_Temp = Var_A + Var_B;
            fibonacci.append(" \n").append(Var_Temp);
            Var_A = Var_B;
            Var_B = Var_Temp;
        }
        JTextArea textArea = new JTextArea(fibonacci.toString());
        JScrollPane scrollPane = new JScrollPane(textArea);
        scrollPane.setPreferredSize(new java.awt.Dimension(300, 400));
        JOptionPane.showMessageDialog(null, scrollPane);
    }
    private static int Func_obterNumero(String mensagem) {
        while (true) {
            try {
                String input = JOptionPane.showInputDialog(mensagem);
                if (input == null) {
                    return 0;
                }
                return Integer.parseInt(input);
            } catch (NumberFormatException e) {
                JOptionPane.showMessageDialog(null, "Por favor, digite um número válido.");
            }
        }
    }
}
