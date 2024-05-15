/*
1- Criar uma classe para cursoSuperior contendo os seguintes atributos privativos à classe: N1, N2, N3.

1.1 - Deverá conter também o método público CalculaMedia().
1.2 -Herdar da classe Superior os atributos e método gerando a subclasse Tecnico.

Na classe Superior:N1 = Nota da P1;N2 = Nota da P2;N3 = Nota de trabalhos. Média = (N1*0,35 + N2*0,5 + N3*0,15)

Na classe Tecnico:N1 = Nota do 1º Trimestre;N2 = Nota do 2º Trimestre;N3 = Nota do 3º Trimestre;.Média = (N1+ N2*2+ N3*2)/5;

2- Criar uma classe principal, 
2.2 - instanciar um objeto a partir da classe Superior 
2.3 - e outro objeto a partir da classe Tecnico.



Solicitar as notas e exibir as médias.
 */
package poo_07;
import javax.swing.JOptionPane;

/**
 *
 * @author J&L
 */
public class Main {
    public static void main(String[] args) {
        boolean sair = false;

        while (!sair) {
            String[] opcoes = {"Curso Superior", "Curso Técnico", "Sair"};
            int escolha = JOptionPane.showOptionDialog(null, "Escolha uma opção:", "Menu", JOptionPane.DEFAULT_OPTION,
                    JOptionPane.QUESTION_MESSAGE, null, opcoes, opcoes[0]);

            switch (escolha) {
                case 0:
                    double p1 = Double.parseDouble(JOptionPane.showInputDialog("Digite a nota da P1 para o Curso Superior:"));
                    double p2 = Double.parseDouble(JOptionPane.showInputDialog("Digite a nota da P2 para o Curso Superior:"));
                    double trabalhos = Double.parseDouble(JOptionPane.showInputDialog("Digite a nota dos Trabalhos para o Curso Superior:"));

                    SuperiorTecnico.CursoSuperior cursoSuperior = new SuperiorTecnico.CursoSuperior(p1, p2, trabalhos);

                    JOptionPane.showMessageDialog(null, "Média para Curso Superior: " + cursoSuperior.CalculaMedia());
                    break;

                case 1: 
                    double trimestre1 = Double.parseDouble(JOptionPane.showInputDialog("Digite a nota do 1º Trimestre para o Curso Técnico:"));
                    double trimestre2 = Double.parseDouble(JOptionPane.showInputDialog("Digite a nota do 2º Trimestre para o Curso Técnico:"));
                    double trimestre3 = Double.parseDouble(JOptionPane.showInputDialog("Digite a nota do 3º Trimestre para o Curso Técnico:"));

                    SuperiorTecnico.Tecnico tecnico = new SuperiorTecnico.Tecnico(trimestre1, trimestre2, trimestre3);

                    JOptionPane.showMessageDialog(null, "Média para Curso Técnico: " + tecnico.CalculaMedia());
                    break;

                case 2:
                    sair = true;
                    break;

                default:
                    JOptionPane.showMessageDialog(null, "Opção inválida!");
                    break;
            }
        }
    }
}