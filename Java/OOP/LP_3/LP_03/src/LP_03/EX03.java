/*3) Um programa capaz de imprimir todos os números primos em um intervalo de números informado pelo usuário;*/

package LP_03;

import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

public class EX03 {
    public static void main(String[] args) {
        int Var_Inicio = Func_obterNumero("Digite o valor inicial do intervalo:");
        if (Var_Inicio == -1) {
            JOptionPane.showMessageDialog(null, "Programa encerrado.");
            return;
        }
        int Var_Fim = Func_obterNumero("Digite o valor final do intervalo:");
        if (Var_Fim == -1) {
            JOptionPane.showMessageDialog(null, "Programa encerrado.");
            return;
        }
        StringBuilder primos = new StringBuilder("Números primos no intervalo [" + Var_Inicio + ", " + Var_Fim + "]:\n");
        for (int i = Var_Inicio; i <= Var_Fim; i++) {
            if (Func_Primo(i)) {
                primos.append(i).append("\n");
            }
        }
        JTextArea textArea = new JTextArea(primos.toString());
        JScrollPane scrollPane = new JScrollPane(textArea);
        scrollPane.setPreferredSize(new java.awt.Dimension(400, 300));
        JOptionPane.showMessageDialog(null, scrollPane);
    }
    private static int Func_obterNumero(String mensagem) {
        while (true) {
            try {
                String input = JOptionPane.showInputDialog(mensagem);
                if (input == null) {
                    return -1;
                }
                return Integer.parseInt(input);
            } catch (NumberFormatException e) {
                JOptionPane.showMessageDialog(null, "Por favor, digite um número válido.");
            }
        }
    }
    private static boolean Func_Primo(int Var_Num) {
        if (Var_Num <= 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(Var_Num); i++) {
            if (Var_Num % i == 0) {
                return false;
            }
        }
        return true;
    }
}