/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.view;

import dm20241m.controller.ControllerSistema;
import dm20241m.model.bean.Sistema;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Aluno
 */
public class ManterSistema {
        public static void menu() throws SQLException, ClassNotFoundException {
        String msg = " 1 - Inserir \n 2 - Alterar \n 3 - buscar \n 4 - excluir \n 5 - Listar " ;
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
            default:
                System.out.println("Opcao inválida");
        }
    }

    private static void inserir() throws SQLException, ClassNotFoundException {

        String nome = JOptionPane.showInputDialog("NOME");
        String servidor = JOptionPane.showInputDialog("SERVIDOR");
        String versao = JOptionPane.showInputDialog("VERSAO");
        String status = JOptionPane.showInputDialog("STATUS");
        Sistema sisEnt = new Sistema(nome, servidor, versao, status);
        ControllerSistema contSist = new ControllerSistema();
        Sistema sisSaida = contSist.inserir(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void alterar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        String nome = JOptionPane.showInputDialog("NOME");
        String servidor = JOptionPane.showInputDialog("SERVIDOR");
        String versao = JOptionPane.showInputDialog("VERSAO");
        String status = JOptionPane.showInputDialog("STATUS");
        Sistema sisEnt = new Sistema(id,nome, servidor,versao, status);
        ControllerSistema contSist = new ControllerSistema();
        Sistema sisSaida = contSist.alterar(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void buscar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Sistema sisEnt = new Sistema(id);
        ControllerSistema contSist = new ControllerSistema();
        Sistema sisSaida = contSist.buscar(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void excluir() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Sistema sisEnt = new Sistema(id);
        ControllerSistema contSist = new ControllerSistema();
        Sistema sisSaida = contSist.excluir(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void listar() throws SQLException, ClassNotFoundException {
        String nome = JOptionPane.showInputDialog("NOME");
        Sistema sisEnt = new Sistema(nome);
        ControllerSistema contSist = new ControllerSistema();
        List<Sistema> listaSistema = contSist.listar(sisEnt);
        for (Sistema sisSaida : listaSistema) {
            JOptionPane.showMessageDialog(null,sisSaida.toString());
        }
    }



    
}
