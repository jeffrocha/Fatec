/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.controller;

import dm20241m.model.bean.Sistema;
import dm20241m.model.dao.DaoSistema;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Aluno
 */
public class ControllerSistema {

    DaoSistema daoSist;

    public Sistema inserir(Sistema sisEnt) throws SQLException, ClassNotFoundException {
        daoSist = new DaoSistema();
        return daoSist.inserir(sisEnt);
    }

    public Sistema alterar(Sistema sisEnt) throws SQLException, ClassNotFoundException {
        daoSist = new DaoSistema();
        return daoSist.alterar(sisEnt);
    }

    public Sistema buscar(Sistema sisEnt) throws SQLException, ClassNotFoundException {
        daoSist = new DaoSistema();
        return daoSist.buscar(sisEnt);
    }

    public Sistema excluir(Sistema sisEnt) throws SQLException, ClassNotFoundException {
        daoSist = new DaoSistema();
        return daoSist.excluir(sisEnt);
    }

    public List<Sistema> listar(Sistema sisEnt) throws SQLException, ClassNotFoundException {
        daoSist = new DaoSistema();
        return daoSist.listar(sisEnt);
    }
    
}
