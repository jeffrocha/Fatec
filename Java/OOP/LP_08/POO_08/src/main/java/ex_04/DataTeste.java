/*
4)Crie  uma  classe  em  Java  chamada  Data  que  inclui  três  informações  
como variáveisde instância:• mês (int),• dia (int)• e ano (int).A  classe  deve 
ter  métodos gete setpara  cada  variável  e  um  construtor  que inicializa  
as  variáveis  eassume  que  os  valores  fornecidos  são  corretos.  Forneça 
um  método displayDataque  exibe  o  dia,  omês  e  o  ano  separadospor  
barras normais ( / ).Escreva   um   aplicativo   de   teste   chamado   
DataTesteque   demonstra   as capacidades da classe Data.
 */
package ex_04;
import javax.swing.JOptionPane;

/**
 *
 * @author J&L
 */
public class DataTeste {
    public static void main(String[] args) {

        String diaStr = JOptionPane.showInputDialog("Digite o dia:");
        String mesStr = JOptionPane.showInputDialog("Digite o mês:");
        String anoStr = JOptionPane.showInputDialog("Digite o ano:");

        int varDia, varMes, varAno;

        try {
            varDia = Integer.parseInt(diaStr);
            varMes = Integer.parseInt(mesStr);
            varAno = Integer.parseInt(anoStr);
            
            if (funcValidarData(varDia, varMes, varAno)) {      
                Data data = new Data(varMes, varDia, varAno); 
                JOptionPane.showMessageDialog(null, "Data: " + varDia + "/" + varMes + "/" + varAno);
            } else {
                JOptionPane.showMessageDialog(null, "Data inválida!");
            }
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Por favor, insira apenas números válidos para o dia, mês e ano.");
        }
    }
    private static boolean funcValidarData(int varDia, int varMes, int varAno) {
        if (varDia < 1 || varDia > 31) {
            return false;
        }
        if (varMes < 1 || varMes > 12) {
            return false;
        }
        if (varAno <= 0) {
            return false;
        }
        return true;
    }
}
