/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.controller;

import dm20241m.model.bean.CadastroUsuario;
import dm20241m.model.bean.Sistema;
import dm20241m.model.bean.Usuario;
import dm20241m.model.bean.UsuarioSistema;
import dm20241m.model.dao.DaoCadastroUsuario;
import dm20241m.model.dao.DaoUsuarioSistema;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author J&L
 */

public class ControllerCadastroUsuario {

    DaoCadastroUsuario daoCadastroUsu;

    public CadastroUsuario inserir(CadastroUsuario cadastroUsuEnt) throws SQLException, ClassNotFoundException {
        daoCadastroUsu = new DaoCadastroUsuario();
        CadastroUsuario cadastroUsuSaida = daoCadastroUsu.inserir(cadastroUsuEnt);
        return cadastroUsuSaida;
    }

    public CadastroUsuario alterar(CadastroUsuario cadastroUsuEnt) throws SQLException, ClassNotFoundException {
        daoCadastroUsu = new DaoCadastroUsuario();
        CadastroUsuario cadastroUsuSaida = daoCadastroUsu.alterar(cadastroUsuEnt);
        return cadastroUsuSaida;
    }

    public CadastroUsuario buscar(CadastroUsuario cadastroUsuEnt) throws SQLException, ClassNotFoundException { 
       
        daoCadastroUsu = new DaoCadastroUsuario();
        CadastroUsuario cadastroUsuSaida = daoCadastroUsu.buscar(cadastroUsuEnt);
        
        Usuario usu = new Usuario(cadastroUsuSaida.getIdU());
        contUsu = new ControllerUsuario();
        cadastroUsuSaida.setUsu(contUsu.buscar(usu));
        
        Sistema sis = new Sistema(cadastroUsuSaida.getIdC());
        contSis = new ControllerSistema();
        cadastroUsuSaida.setSis(contSis.buscar(sis));
        
        return cadastroUsuSaida;
    }
    
    public CadastroUsuario excluir(CadastroUsuario cadastroUsuEnt) throws SQLException, ClassNotFoundException {
        daoCadastroUsu = new DaoCadastroUsuario();
        CadastroUsuario cadastroUsuSaida = daoCadastroUsu.excluir(cadastroUsuEnt);
        return cadastroUsuSaida;
    }

    public List<CadastroUsuario> listar(CadastroUsuario cadastroUsuEnt) throws SQLException, ClassNotFoundException {
        daoCadastroUsu = new DaoCadastroUsuario();
        List<CadastroUsuario> listaCadastroUsuarioAux = daoCadastroUsu.listar(cadastroUsuEnt);
        List<CadastroUsuario> listaCadastroUsuario = new ArrayList<>();
        for (CadastroUsuario cadastroUsuSaida : listaCadastroUsuarioAux) {
            listaCadastroUsuario.add(buscar(cadastroUsuSaida));
        }
        return listaCadastroUsuario;
    }
}

