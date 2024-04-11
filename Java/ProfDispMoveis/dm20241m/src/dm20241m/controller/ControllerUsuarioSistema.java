/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.controller;

import dm20241m.model.bean.Sistema;
import dm20241m.model.bean.Usuario;
import dm20241m.model.bean.UsuarioSistema;
import dm20241m.model.dao.DaoUsuarioSistema;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class ControllerUsuarioSistema {
    
    DaoUsuarioSistema daoUsu;
    ControllerUsuario contUsu;
    ControllerSistema contSis;
    

    public UsuarioSistema inserir(UsuarioSistema usuEnt) throws SQLException, ClassNotFoundException {
        daoUsu = new DaoUsuarioSistema();
        UsuarioSistema usuSaida = daoUsu.inserir(usuEnt);
        return usuSaida;
    }

    public UsuarioSistema alterar(UsuarioSistema usuEnt) throws SQLException, ClassNotFoundException {
        daoUsu = new DaoUsuarioSistema();
        UsuarioSistema usuSaida = daoUsu.alterar(usuEnt);
        return usuSaida;
    }

    public UsuarioSistema buscar(UsuarioSistema usuEnt) throws SQLException, ClassNotFoundException {
        
        daoUsu = new DaoUsuarioSistema();
        UsuarioSistema usuSaida = daoUsu.buscar(usuEnt);
        
        Usuario usu = new Usuario(usuSaida.getIdU());
        contUsu = new ControllerUsuario();
        usuSaida.setUsu(contUsu.buscar(usu));
        
        Sistema sis = new Sistema(usuSaida.getIdS());
        contSis = new ControllerSistema();
        usuSaida.setSis(contSis.buscar(sis));
        
        return usuSaida;
    }

    public UsuarioSistema excluir(UsuarioSistema usuEnt) throws SQLException, ClassNotFoundException {
        daoUsu = new DaoUsuarioSistema();
        UsuarioSistema usuSaida = daoUsu.excluir(usuEnt);
        return usuSaida;
    }

    public List<UsuarioSistema> listar(UsuarioSistema usuEnt) throws SQLException, ClassNotFoundException {
        daoUsu = new DaoUsuarioSistema();
        List<UsuarioSistema> listaUsuarioAux = daoUsu.listar(usuEnt);
        List<UsuarioSistema> listaUsuario = new ArrayList<>();
        for(UsuarioSistema usuSis: listaUsuarioAux) {
            listaUsuario.add(buscar(usuSis));
        }
        return listaUsuario;
     }
    
}
