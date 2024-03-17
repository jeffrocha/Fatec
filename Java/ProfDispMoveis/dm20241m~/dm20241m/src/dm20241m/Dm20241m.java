/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package dm20241m;

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
        String msg = " 0 - Sair \n 1 - Usuario \n 2 - Sistema \n 3 - ControleAcesso ";

        int num = Integer.parseInt(JOptionPane.showInputDialog(msg));
        
        switch (num) {
            case 0:
                int sair = JOptionPane.showConfirmDialog(null,"Deseja Sair");
                if (sair > 0) menu();
                break;
            case 1:
                ManterUsuario.menu();
                break;
            case 2:
                ManterSistema.menu();
                break;
            case 3:
                ManterUsuarioSistema.menu();
                break;
            default:
                System.out.println("Opção inválido");
        }
    }
    
}

