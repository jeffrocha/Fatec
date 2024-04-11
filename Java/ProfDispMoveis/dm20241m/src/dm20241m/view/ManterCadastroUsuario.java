/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.view;

import dm20241m.Dm20241m;
import dm20241m.controller.ControllerCadastroUsuario;
import dm20241m.model.bean.CadastroUsuario;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author J&L
 */

public class ManterCadastroUsuario {

    public static void menu() throws SQLException, ClassNotFoundException {
        String msg = "\tCadastro de Usuário\n 0 - Retornar \n1 - Inserir \n 2 - Alterar \n 3 - Buscar \n 4 - Excluir \n 5 - Listar ";
        int num = Integer.parseInt(JOptionPane.showInputDialog(msg));
        switch (num) {
            case 1:
                inserir();
                break;
            case 2:
                alterar();
                break;
            case 3:
                buscar();
                break;
            case 4:
                excluir();
                break;
            case 5:
                listar();
                break;
            case 0:
                Dm20241m.menu();
                break;
            default:
                System.out.println("Opcao inválida");
        }
        ManterCadastroUsuario.menu();
    }

    private static void inserir() throws SQLException, ClassNotFoundException {
        int idC = Integer.parseInt(JOptionPane.showInputDialog("IDC"));
        int idU = Integer.parseInt(JOptionPane.showInputDialog("IDU"));
        String obs = JOptionPane.showInputDialog("OBS");
        CadastroUsuario cadastroUsuEnt = new CadastroUsuario(idC, idU, obs);
        ControllerCadastroUsuario contCadastroUsu = new ControllerCadastroUsuario();
        CadastroUsuario cadastroUsuSaida = contCadastroUsu.inserir(cadastroUsuEnt);
        JOptionPane.showMessageDialog(null, cadastroUsuSaida.toString());
    }

    private static void alterar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        int idC = Integer.parseInt(JOptionPane.showInputDialog("IDC"));
        int idU = Integer.parseInt(JOptionPane.showInputDialog("IDU"));
        String obs = JOptionPane.showInputDialog("OBS");
        CadastroUsuario cadastroUsuEnt = new CadastroUsuario(id, idC, idU, obs);
        ControllerCadastroUsuario contCadastroUsu = new ControllerCadastroUsuario();
        CadastroUsuario cadastroUsuSaida = contCadastroUsu.alterar(cadastroUsuEnt);
        JOptionPane.showMessageDialog(null, cadastroUsuSaida.toString());
    }

private static void buscar() throws SQLException, ClassNotFoundException {
    int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
    CadastroUsuario cadastroUsuEnt = new CadastroUsuario(id);
    ControllerCadastroUsuario contCadastroUsu = new ControllerCadastroUsuario();
    CadastroUsuario cadastroUsuSaida = contCadastroUsu.buscar(cadastroUsuEnt);
    
    if (cadastroUsuSaida != null) {
        JOptionPane.showMessageDialog(null, cadastroUsuSaida.toString());
        JOptionPane.showMessageDialog(null, cadastroUsuSaida.getIdC().toString());
        JOptionPane.showMessageDialog(null, cadastroUsuSaida.getIdU());
    } else {
        JOptionPane.showMessageDialog(null, "Usuário não encontrado");
    }
}

/*    private static void buscar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        UsuarioSistema usuEnt = new UsuarioSistema(id);
        ControllerUsuarioSistema contUsu = new ControllerUsuarioSistema();
        UsuarioSistema usuSaida = contUsu.buscar(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
        JOptionPane.showMessageDialog(null,usuSaida.getUsu().toString());
        JOptionPane.showMessageDialog(null,usuSaida.getSis().toString());

    }*/


    private static void excluir() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        CadastroUsuario cadastroUsuEnt = new CadastroUsuario(id);
        ControllerCadastroUsuario contCadastroUsu = new ControllerCadastroUsuario();
        CadastroUsuario cadastroUsuSaida = contCadastroUsu.excluir(cadastroUsuEnt);
        JOptionPane.showMessageDialog(null, cadastroUsuSaida.toString());
    }

    private static void listar() throws SQLException, ClassNotFoundException {
        String obs = JOptionPane.showInputDialog("OBS");
        CadastroUsuario cadastroUsuEnt = new CadastroUsuario(obs);
        ControllerCadastroUsuario contCadastroUsu = new ControllerCadastroUsuario();
        List<CadastroUsuario> listaCadastroUsuario = contCadastroUsu.listar(cadastroUsuEnt);
        for (CadastroUsuario cadastroUsuSaida : listaCadastroUsuario) {
            JOptionPane.showMessageDialog(null, cadastroUsuSaida.toString());
        }
    }
}
