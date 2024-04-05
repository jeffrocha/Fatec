/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.controller;

import dm20241m.model.bean.Cadastro; // Alterado para Cadastro
import dm20241m.model.dao.DaoCadastro; // Alterado para DaoCadastro
import java.sql.SQLException;
import java.util.List;
/**
 *
 * @author J&L
 */

public class ControllerCadastro { // Alterado para ControllerCadastro

    DaoCadastro daoCad; // Alterado para DaoCadastro

    public Cadastro inserir(Cadastro cadEnt) throws SQLException, ClassNotFoundException { // Alterado para Cadastro
        daoCad = new DaoCadastro(); // Alterado para DaoCadastro
        return daoCad.inserir(cadEnt); // Alterado para Cadastro
    }

    public Cadastro alterar(Cadastro cadEnt) throws SQLException, ClassNotFoundException { // Alterado para Cadastro
        daoCad = new DaoCadastro(); // Alterado para DaoCadastro
        return daoCad.alterar(cadEnt); // Alterado para Cadastro
    }

    public Cadastro buscar(Cadastro cadEnt) throws SQLException, ClassNotFoundException { // Alterado para Cadastro
        daoCad = new DaoCadastro(); // Alterado para DaoCadastro
        return daoCad.buscar(cadEnt); // Alterado para Cadastro
    }

    public Cadastro excluir(Cadastro cadEnt) throws SQLException, ClassNotFoundException { // Alterado para Cadastro
        daoCad = new DaoCadastro(); // Alterado para DaoCadastro
        return daoCad.excluir(cadEnt); // Alterado para Cadastro
    }

    public List<Cadastro> listar(Cadastro cadEnt) throws SQLException, ClassNotFoundException { // Alterado para Cadastro
        daoCad = new DaoCadastro(); // Alterado para DaoCadastro
        return daoCad.listar(cadEnt); // Alterado para Cadastro
    }
}
