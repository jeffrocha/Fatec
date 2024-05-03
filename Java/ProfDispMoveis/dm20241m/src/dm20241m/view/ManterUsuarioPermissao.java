/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.view;

import dm20241m.controller.ControllerUsuarioPermissao;
import dm20241m.model.bean.UsuarioPermissao;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author J&L
 */
public class ManterUsuarioPermissao {
    public static void menu() throws SQLException, ClassNotFoundException {
        String msg = "1 - Inserir \n 2 - Alterar \n 3 - Buscar \n 4 - Excluir \n 5 - Listar ";
        int num = Integer.parseInt(JOptionPane.showInputDialog(msg));
        switch (num){
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
            default:
                System.out.println("opcao inválida");
        }
    }
    private static void inserir() throws SQLException, ClassNotFoundException {
        int idU = Integer.parseInt(JOptionPane.showInputDialog("idU"));
        int idP = Integer.parseInt(JOptionPane.showInputDialog("idP"));
        UsuarioPermissao usuEnt = new UsuarioPermissao(idU, idP);
        ControllerUsuarioPermissao contUsu = new ControllerUsuarioPermissao();
        UsuarioPermissao usuSaida = contUsu.inserir(usuEnt);
        JOptionPane.showMessageDialog(null, usuSaida.toString());   
    }
    
    private static void alterar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("id"));
        int idU = Integer.parseInt(JOptionPane.showInputDialog("idU"));
        int idP = Integer.parseInt(JOptionPane.showInputDialog("idP"));
        UsuarioPermissao usuEnt = new UsuarioPermissao(id,idU,idP);
        ControllerUsuarioPermissao contUsu = new ControllerUsuarioPermissao();
        UsuarioPermissao usuSaida = contUsu.alterar(usuEnt);
        JOptionPane.showMessageDialog(null, usuSaida.toString());   
    }

    private static void buscar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        UsuarioPermissao usuEnt = new UsuarioPermissao(id);
        ControllerUsuarioPermissao contUsu = new ControllerUsuarioPermissao();
        UsuarioPermissao usuSaida = contUsu.buscar(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
        JOptionPane.showMessageDialog(null,usuSaida.getPer().toString());
        JOptionPane.showMessageDialog(null,usuSaida.getUsu().toString());
    }
    private static void excluir() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("id"));
        UsuarioPermissao usuEnt = new UsuarioPermissao(id);
        ControllerUsuarioPermissao contUsu = new ControllerUsuarioPermissao();
        UsuarioPermissao usuSaida = contUsu.excluir(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
    }
    private static void listar() throws SQLException, ClassNotFoundException {
        String obs = JOptionPane.showInputDialog("OBS");
        UsuarioPermissao usuEnt = new UsuarioPermissao(obs);
        ControllerUsuarioPermissao contUsu = new ControllerUsuarioPermissao();
        List<UsuarioPermissao> listaUsuario = contUsu.listar(usuEnt);
        for (UsuarioPermissao usuSaida : listaUsuario) {
            JOptionPane.showMessageDialog(null,usuSaida.toString());
            JOptionPane.showMessageDialog(null,usuSaida.getUsu().toString());
            JOptionPane.showMessageDialog(null,usuSaida.getPer().toString());
        }
}
}
