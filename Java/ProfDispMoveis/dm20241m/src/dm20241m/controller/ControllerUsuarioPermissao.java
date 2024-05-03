package dm20241m.controller;

import dm20241m.model.bean.Permissao;
import dm20241m.model.bean.Usuario;
import dm20241m.model.bean.UsuarioPermissao;
import dm20241m.model.dao.DaoUsuarioPermissao;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ControllerUsuarioPermissao {

    private DaoUsuarioPermissao daoUsuarioPermissao;
    ControllerUsuario contUsu;
    ControllerPermissao contPer;//ControllerSistema contSis;
    

    public UsuarioPermissao inserir(UsuarioPermissao usuEnt) throws SQLException, ClassNotFoundException {
        daoUsuarioPermissao = new DaoUsuarioPermissao();
        UsuarioPermissao usuSaida=daoUsuarioPermissao.inserir(usuEnt);
        return usuSaida;
    }

    public UsuarioPermissao excluir(UsuarioPermissao usuEnt) throws SQLException, ClassNotFoundException {
        daoUsuarioPermissao = new DaoUsuarioPermissao();
        UsuarioPermissao usuSaida=daoUsuarioPermissao.excluir(usuEnt);
        return usuSaida;
    }
    
    public UsuarioPermissao alterar(UsuarioPermissao usuEnt) throws SQLException, ClassNotFoundException {
    daoUsuarioPermissao = new DaoUsuarioPermissao();
    UsuarioPermissao usuSaida = daoUsuarioPermissao.alterar(usuEnt);
    return usuSaida;
    }
    
  public UsuarioPermissao buscar(UsuarioPermissao usuEnt) throws SQLException, ClassNotFoundException {
        
        daoUsuarioPermissao = new DaoUsuarioPermissao();
        UsuarioPermissao usuSaida = daoUsuarioPermissao.buscar(usuEnt);
        
        Usuario usu = new Usuario(usuSaida.getIdU());
        contUsu = new ControllerUsuario();
        usuSaida.setUsu(contUsu.buscar(usu));
        
        Permissao per = new Permissao(usuSaida.getIdP());
        contPer = new ControllerPermissao();
        usuSaida.setPer(contPer.buscar(per));
        
        return usuSaida;
    }
  
    public List<UsuarioPermissao> listar(UsuarioPermissao usuEnt) throws SQLException, ClassNotFoundException {
        daoUsuarioPermissao = new DaoUsuarioPermissao();
        List<UsuarioPermissao> listaUsuarioAux = daoUsuarioPermissao.listar(usuEnt);
        List<UsuarioPermissao> listaUsuario = new ArrayList<>();
        for(UsuarioPermissao usuSis: listaUsuarioAux) {
            listaUsuario.add(buscar(usuSis));
        }
        return listaUsuario;
     }


}
