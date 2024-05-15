/*Criar um programa que leia um número que será o limite superior de um intervalo e o incremento. Exibir todos os números naturais no intervalo de 0 até esse número. Suponha que os dois números lidos são maiores que zero. Exemplo:
Limite superior: 20
Incremento: 5
Saída: 0 5 10 15 20*/

package LP_03;

import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

public class EX05 {
    public static void main(String[] args) {
        int Var_LimSup = Func_obterNumero("Digite o limite superior do intervalo:");
        if (Var_LimSup == -1) {
            JOptionPane.showMessageDialog(null, "Programa encerrado.");
            return;
        }

        int Var_Incr = Func_obterNumero("Digite o incremento:");
        if (Var_Incr == -1) {
            JOptionPane.showMessageDialog(null, "Programa encerrado.");
            return;
        }

        StringBuilder Var_Num = new StringBuilder();
        for (int i = 0; i <= Var_LimSup; i += Var_Incr) {
            Var_Num.append(i).append("\n");
        }

        JTextArea textArea = new JTextArea(Var_Num.toString());
        JScrollPane scrollPane = new JScrollPane(textArea);
        scrollPane.setPreferredSize(new java.awt.Dimension(300, 400));
        JOptionPane.showMessageDialog(null, scrollPane);
    }

    private static int Func_obterNumero(String mensagem) {
        while (true) {
            try {
                String input = JOptionPane.showInputDialog(mensagem);
                if (input == null) {
                    return -1;
                }
                int Var_Num = Integer.parseInt(input);
                if (Var_Num <= 0) {
                    JOptionPane.showMessageDialog(null, "Por favor, digite um número maior que zero.");
                } else {
                    return Var_Num;
                }
            } catch (NumberFormatException e) {
                JOptionPane.showMessageDialog(null, "Por favor, digite um número válido.");
            }
        }
    }
}
