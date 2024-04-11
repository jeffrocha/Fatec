/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package dm20241m;

import dm20241m.view.ManterCadastro;
import dm20241m.view.ManterCadastroUsuario;
import dm20241m.view.ManterSistema;
import dm20241m.view.ManterUsuario;
import dm20241m.view.ManterUsuarioSistema;
import java.sql.SQLException;
import javax.swing.JOptionPane;
 

/**
 *
 * @author Aluno
 */
public class Dm20241m {

     /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        if(ManterUsuario.validar()) {
            menu();
        } else {
            JOptionPane.showMessageDialog(null,"Usuario Inválido");            
        }
    }

    public static void menu() throws SQLException, ClassNotFoundException {
        String msg = "\tMenu\n 0 - Sair \n 1 - Cadastro \n 2 - Usuario \n 3 - Sistema \n 4 - ControleAcesso \n 5 - ControleCadastroUsuario";

        int num = Integer.parseInt(JOptionPane.showInputDialog(msg));
        
        switch (num) {
            case 0:
                int sair = JOptionPane.showConfirmDialog(null, "Deseja Sair");
                if (sair == JOptionPane.YES_OPTION) {
                    JOptionPane.showMessageDialog(null, "Programa encerrado.");
                    System.exit(0);
                    return; // Encerra o método menu() e consequentemente o programa
                }
                break;
            case 1:
                ManterCadastro.menu();
                break;
            case 2:
                ManterUsuario.menu();
                break;
            case 3:
                ManterSistema.menu();
                break;
            case 4:
                ManterUsuarioSistema.menu();
                break;
            case 5:
                ManterCadastroUsuario.menu();
                break;    
            default:
                System.out.println("Opção inválido");
        }
    }
    
}

