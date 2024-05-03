package dm20241m.view;

import dm20241m.controller.ControllerPermissao;
import dm20241m.model.bean.Permissao;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

public class ManterPermissao {
    
    public static void menu() throws SQLException, ClassNotFoundException {
        String msg = " 1 - Inserir \n 2 - Alterar \n 3 - Buscar \n 4 - Excluir \n 5 - Listar ";
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
                JOptionPane.showMessageDialog(null, "Opção inválida");
        }
    }

    private static void inserir() throws SQLException, ClassNotFoundException {
        String permissao = JOptionPane.showInputDialog("Permissão");
        String descricao = JOptionPane.showInputDialog("Descrição");
        Permissao permissaoEnt = new Permissao(permissao, descricao);
        ControllerPermissao contPermissao = new ControllerPermissao();
        boolean inserido = contPermissao.inserir(permissaoEnt);
        if (inserido) {
            JOptionPane.showMessageDialog(null, "Permissão inserida com sucesso.");
        } else {
            JOptionPane.showMessageDialog(null, "Erro ao inserir permissão.");
        }
    }

    private static void alterar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        String permissao = JOptionPane.showInputDialog("Nova permissão");
        String descricao = JOptionPane.showInputDialog("Nova descrição");
        Permissao permissaoEnt = new Permissao(id, permissao, descricao);
        ControllerPermissao contPermissao = new ControllerPermissao();
        boolean alterado = contPermissao.alterar(permissaoEnt);
        if (alterado) {
            JOptionPane.showMessageDialog(null, "Permissão alterada com sucesso.");
        } else {
            JOptionPane.showMessageDialog(null, "Erro ao alterar permissão.");
        }
    }

    private static void buscar() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Permissao permissaoEnt = new Permissao(id);
        ControllerPermissao contPermissao = new ControllerPermissao();
        Permissao permissaoSaida = contPermissao.buscar(permissaoEnt);
        if (permissaoSaida != null) {
            JOptionPane.showMessageDialog(null, permissaoSaida.toString());
        } else {
            JOptionPane.showMessageDialog(null, "Permissão não encontrada.");
        }
    }

    private static void excluir() throws SQLException, ClassNotFoundException {
        int id = Integer.parseInt(JOptionPane.showInputDialog("ID"));
        Permissao permissaoEnt = new Permissao(id);
        ControllerPermissao contPermissao = new ControllerPermissao();
        boolean excluido = contPermissao.excluir(permissaoEnt);
        if (excluido) {
            JOptionPane.showMessageDialog(null, "Permissão excluída com sucesso.");
        } else {
            JOptionPane.showMessageDialog(null, "Erro ao excluir permissão.");
        }
    }

    private static void listar() throws SQLException, ClassNotFoundException {
        String idString = JOptionPane.showInputDialog("ID");
        int id = Integer.parseInt(idString);
        Permissao perEnt = new Permissao(id);
        ControllerPermissao contPermissao = new ControllerPermissao();

        List<Permissao> listaPermissoes = contPermissao.listar(perEnt);
        for (Permissao permissao : listaPermissoes) {
            JOptionPane.showMessageDialog(null,permissao.toString());
        }
    }
}
