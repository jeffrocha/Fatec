package dm20241m.controller;
import dm20241m.model.bean.Permissao;
import dm20241m.model.dao.DaoPermissao;
import java.sql.SQLException;
import java.util.List;

public class ControllerPermissao {

    private DaoPermissao daoPermissao;

    public boolean inserir(Permissao permissao) throws SQLException, ClassNotFoundException {
        daoPermissao = new DaoPermissao();
        return daoPermissao.inserir(permissao) != null;
    }

    public boolean alterar(Permissao permissao) throws SQLException, ClassNotFoundException {
        daoPermissao = new DaoPermissao();
        return daoPermissao.alterar(permissao) != null;
    }

    public boolean excluir(Permissao permissao) throws SQLException, ClassNotFoundException {
        daoPermissao = new DaoPermissao();
        return daoPermissao.excluir(permissao) != null;
    }

    public Permissao buscar(Permissao permissao) throws SQLException, ClassNotFoundException {
        daoPermissao = new DaoPermissao();
        return daoPermissao.Buscar(permissao);
    }

    public List<Permissao> listar(Permissao permissao) throws SQLException, ClassNotFoundException {
        daoPermissao = new DaoPermissao();
        return daoPermissao.listar(permissao);
    }
}
