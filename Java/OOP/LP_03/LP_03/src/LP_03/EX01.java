/*1) Um programa capaz de imprimir todos os números pares em um intervalo de números informador pelo usuário;*/

package LP_03;

import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

public class EX01 {
    public static void main(String[] args) {
        Integer Var_inicio = Func_obterNumero("Digite o valor inicial do intervalo:");
        if (Var_inicio == null) {
            JOptionPane.showMessageDialog(null, "Programa encerrado.");
            return;
        }
        Integer Var_fim = Func_obterNumero("Digite o valor final do intervalo:");
        if (Var_fim == null) {
            JOptionPane.showMessageDialog(null, "Programa encerrado.");
            return;
        }
        if (Var_inicio.equals(Var_fim)) {
            JOptionPane.showMessageDialog(null, "Os números de início e fim são iguais.");
            return;
        }
        StringBuilder pares = new StringBuilder("Números pares no intervalo [" + Var_inicio + ", " + Var_fim + "]:\n");
        for (int i = Var_inicio; i <= Var_fim; i++) {
            if (i % 2 == 0) {
                pares.append(i).append("\n");
            }
        }
        JTextArea textArea = new JTextArea(pares.toString());
        JScrollPane scrollPane = new JScrollPane(textArea);
        scrollPane.setPreferredSize(new java.awt.Dimension(300, 400));
        JOptionPane.showMessageDialog(null, scrollPane);
    }

    private static Integer Func_obterNumero(String mensagem) {
        while (true) {
            try {
                String input = JOptionPane.showInputDialog(mensagem);
                if (input == null) {
                    return null;
                }
                return Integer.parseInt(input);
            } catch (NumberFormatException e) {
                JOptionPane.showMessageDialog(null, "Por favor, digite um número válido.");
            }
        }
    }
}
