/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.view;

import dm20241m.Dm20241m;
import dm20241m.controller.ControllerCadastro; // Adjusted import
import dm20241m.model.bean.Cadastro; // Adjusted import
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

public class ManterCadastro {

    public static void menu() throws SQLException, ClassNotFoundException {
        String msg = "\tCadastro\n 0 - Retornar \n 1 - Inserir \n 2 - Alterar \n 3 - buscar \n 4 - excluir \n 5 - Listar ";
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
        ManterCadastro.menu();
    }

    private static void inserir() throws SQLException, ClassNotFoundException {
    String nome = JOptionPane.showInputDialog("Nome");
    String sobrenome = JOptionPane.showInputDialog("Sobrenome");
    String setor = JOptionPane.showInputDialog("Setor");
    Cadastro cadastro = new Cadastro(0, nome, sobrenome, setor); // ID definido como 0
    ControllerCadastro controllerCadastro = new ControllerCadastro();
    Cadastro cadastroSaida = controllerCadastro.inserir(cadastro);
    JOptionPane.showMessageDialog(null, cadastroSaida.toString());
}

    private static void alterar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("id"));
        String nome = JOptionPane.showInputDialog("Nome"); // Adjusted field
        String sobrenome = JOptionPane.showInputDialog("Sobrenome"); // Adjusted field
        String setor = JOptionPane.showInputDialog("Setor"); // Adjusted field
        Cadastro cadEnt = new Cadastro(id, nome, sobrenome, setor); // Adjusted object creation
        ControllerCadastro contCad = new ControllerCadastro(); // Adjusted controller instantiation
        Cadastro cadSaida = contCad.alterar(cadEnt); // Adjusted method call
        JOptionPane.showMessageDialog(null, cadSaida.toString());
    }

    private static void buscar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID")); // Adjusted field
        Cadastro cadastro = new Cadastro(id); // Adjusted object creation
        ControllerCadastro controllerCadastro = new ControllerCadastro(); // Adjusted controller instantiation
        Cadastro cadastroSaida = controllerCadastro.buscar(cadastro); // Adjusted method call
        JOptionPane.showMessageDialog(null, cadastroSaida.toString());
    }

    private static void excluir() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID")); // Adjusted field
        Cadastro cadEnt = new Cadastro(id); // Adjusted object creation
        ControllerCadastro contCad = new ControllerCadastro(); // Adjusted controller instantiation
        Cadastro cadSaida = contCad.excluir(cadEnt); // Adjusted method call
        JOptionPane.showMessageDialog(null, cadSaida.toString());
    }

    private static void listar() throws SQLException, ClassNotFoundException {
        // Listing by login might not be applicable, but you can adjust it as per your application logic.
        String nome = JOptionPane.showInputDialog("NOME"); // Adjusted field
        Cadastro cadEnt = new Cadastro(nome); // Adjusted object creation
        ControllerCadastro contCad = new ControllerCadastro(); // Adjusted controller instantiation
        List<Cadastro> listaCadastro = contCad.listar(cadEnt); // Adjusted method call
        for (Cadastro cadSaida : listaCadastro) {
            JOptionPane.showMessageDialog(null, cadSaida.toString());
        }
    }
}
