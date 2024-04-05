/*4) Um programa que calcule a média de uma aluno nos moldes da Fatec Zona SUL.*/

package LP_03;

import javax.swing.JOptionPane;
import java.text.DecimalFormat;

public class EX04 {
    public static void main(String[] args) {
        double Var_p1 = Func_obterNota("Digite a nota da P1:");
        if (Var_p1 == -1) {
            JOptionPane.showMessageDialog(null, "Programa encerrado.");
            return;
        }
        double Var_p2 = Func_obterNota("Digite a nota da P2:");
        if (Var_p2 == -1) {
            JOptionPane.showMessageDialog(null, "Programa encerrado.");
            return;
        }
        double Var_media = (Var_p1 + Var_p2) / 2;
        String Var_situacao;
        if (Var_media < 7) {
            double Var_p3 = Func_obterNota("Digite a nota da P3:");
            if (Var_p3 == -1) {
                JOptionPane.showMessageDialog(null, "Programa encerrado.");
                return;
            }
            Var_media = (Var_p1 + Var_p2 + Var_p3) / 3;
        }
        if (Var_media >= 7) {
            Var_situacao = "Aprovado";
        } else {
            Var_situacao = "Reprovado";
        }
        DecimalFormat formato = new DecimalFormat("#.#");
        JOptionPane.showMessageDialog(null, "A média do aluno é: " + formato.format(Var_media) + "\nSituação: " + Var_situacao);
    }
    private static double Func_obterNota(String mensagem) {
        while (true) {
            try {
                String input = JOptionPane.showInputDialog(mensagem);
                if (input == null) {
                    return -1;
                }
                double nota = Double.parseDouble(input);
                if (nota < 0 || nota > 10) {
                    JOptionPane.showMessageDialog(null, "Por favor, digite uma nota válida (entre 0 e 10).");
                } else {
                    return nota;
                }
            } catch (NumberFormatException e) {
                JOptionPane.showMessageDialog(null, "Por favor, digite uma nota válida.");
            }
        }
    }
}
