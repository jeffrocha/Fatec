/*
5)Crie  uma  classe  Animal  contendo  os  atributos tipoe cor. 
Adicione  os  métodos set, get,  umconstrutor  para  classe  que  
inicialize  as  variáveis  de  instância,  e  um método toString
pararetornar o tipo e a cor do animal.Construa uma classe Cachorroque 
estenda a classe Animale tenha os atributos nome  e  raça  do  cachorro,
construa  para  classe  os  métodos set,  get,um construtore ummétodo 
toString para classe cachorro.Construa uma classe Cockerque estenda a 
classe Cachorroe tenha os atributos tosa  do  tipo  boolean  
(falso,  verdadeiro),  com  um  método  setTosa  e  um  métodoprecisaTosa
que deve retornar apenas se precisa ou não de tosa.Escreva  umprograma 
de  teste  (classe  CockerTeste)  adequado  para  esta  classe testando 
os métodos da classe e os métodos herdados. Utilize para entrada e saída 
dedados a classe JOptionPane.
 */
package ex_05;
import javax.swing.JOptionPane;
/**
 *
 * @author J&L
 */
public class CockerTeste {
    public static void main(String[] args) {
        String tipo = JOptionPane.showInputDialog("Digite o tipo do animal:");
        String cor = JOptionPane.showInputDialog("Digite a cor do animal:");
        String nome = JOptionPane.showInputDialog("Digite o nome do cachorro:");
        String raca = JOptionPane.showInputDialog("Digite a raça do cachorro:");
        String tosaStr;
        while (true) {
            tosaStr = JOptionPane.showInputDialog("O cachorro precisa de tosa? (1-Sim e 2-Não)");
            if (tosaStr.equals("1")) {
                tosaStr = "true";
                break;
            } else if (tosaStr.equals("2")) {
                tosaStr = "false";
                break;
            } else {
                JOptionPane.showMessageDialog(null, "Opção inválida! Digite 1 para Sim ou 2 para Não.");
            }
        }
        boolean tosa = Boolean.parseBoolean(tosaStr);
        Cocker cocker = new Cocker(tipo, cor, nome, raca, tosa);
        JOptionPane.showMessageDialog(null, cocker.toString());
        JOptionPane.showMessageDialog(null, cocker.precisaTosa());
    }
}
