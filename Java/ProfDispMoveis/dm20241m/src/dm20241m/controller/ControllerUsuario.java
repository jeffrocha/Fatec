/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.controller;

import dm20241m.model.bean.Usuario;
import dm20241m.model.dao.DaoUsuario;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Aluno
 */
public class ControllerUsuario {
    
    DaoUsuario daoUsu;

    public boolean validar(Usuario usuEnt) throws SQLException, ClassNotFoundException {
        boolean retorno = false;
        daoUsu = new DaoUsuario();
        Usuario usuSaida = daoUsu.validar(usuEnt);
        if(usuSaida != null) {
            retorno = true;
        }
        return retorno;
    }

    public Usuario validarWeb(Usuario usuEnt) throws SQLException, ClassNotFoundException {
        daoUsu = new DaoUsuario();
        return daoUsu.validar(usuEnt);
    }

    public Usuario inserir(Usuario usuEnt) throws SQLException, ClassNotFoundException {
        daoUsu = new DaoUsuario();
        return daoUsu.inserir(usuEnt);
    }

    public Usuario alterar(Usuario usuEnt) throws SQLException, ClassNotFoundException {
        daoUsu = new DaoUsuario();
        return daoUsu.alterar(usuEnt);
    }

    public Usuario buscar(Usuario usuEnt) throws SQLException, ClassNotFoundException {
        daoUsu = new DaoUsuario();
        return daoUsu.buscar(usuEnt);
    }

    public Usuario excluir(Usuario usuEnt) throws SQLException, ClassNotFoundException {
        daoUsu = new DaoUsuario();
        return daoUsu.excluir(usuEnt);
    }

    public List<Usuario> listar(Usuario usuEnt) throws SQLException, ClassNotFoundException {
        daoUsu = new DaoUsuario();
        return daoUsu.listar(usuEnt);
    }
    
}
