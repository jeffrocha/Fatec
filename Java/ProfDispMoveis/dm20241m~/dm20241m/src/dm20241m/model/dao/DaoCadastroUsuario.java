/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.model.dao;

import dm20241m.model.bean.CadastroUsuario;
import dm20241m.util.ConexaoDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author J&L
 */

public class DaoCadastroUsuario {

    private final Connection c;

    public DaoCadastroUsuario() throws SQLException, ClassNotFoundException {
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public CadastroUsuario excluir(CadastroUsuario cadastroUsuEnt) throws SQLException {
        String sql = "DELETE FROM cadastrousuario WHERE id = ?";
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setInt(1, cadastroUsuEnt.getId());
        stmt.execute();
        stmt.close();
        c.close();
        return cadastroUsuEnt;
    }

    public CadastroUsuario buscar(CadastroUsuario cadastroUsuEnt) throws SQLException {
        String sql = "SELECT * FROM cadastrousuario WHERE id = ?";
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setInt(1, cadastroUsuEnt.getId());
        ResultSet rs = stmt.executeQuery();
        CadastroUsuario cadastroUsuSaida = null;
        if (rs.next()) {
            cadastroUsuSaida = new CadastroUsuario(
                rs.getInt("id"),
                rs.getInt("idC"),
                rs.getInt("idU"),
                rs.getString("obs")
            );
        }
        stmt.close();
        rs.close();
        return cadastroUsuSaida;
    }

    public CadastroUsuario inserir(CadastroUsuario cadastroUsuEnt) throws SQLException {
        String sql = "INSERT INTO cadastrousuario (idC, idU, obs) VALUES (?, ?, ?)";
        PreparedStatement stmt = c.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
        stmt.setInt(1, cadastroUsuEnt.getIdC());
        stmt.setInt(2, cadastroUsuEnt.getIdU());
        stmt.setString(3, cadastroUsuEnt.getObs());
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            cadastroUsuEnt.setId(id);
        }
        stmt.close();
        rs.close();
        return cadastroUsuEnt;
    }

    public CadastroUsuario alterar(CadastroUsuario cadastroUsuEnt) throws SQLException {
        String sql = "UPDATE cadastrousuario SET idC = ?, idU = ?, obs = ? WHERE id = ?";
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setInt(1, cadastroUsuEnt.getIdC());
        stmt.setInt(2, cadastroUsuEnt.getIdU());
        stmt.setString(3, cadastroUsuEnt.getObs());
        stmt.setInt(4, cadastroUsuEnt.getId());
        stmt.execute();
        stmt.close();
        return cadastroUsuEnt;
    }

    public List<CadastroUsuario> listar(CadastroUsuario cadastroUsuEnt) throws SQLException {
        List<CadastroUsuario> listaCadastroUsuario = new ArrayList<>();
        String sql = "SELECT * FROM cadastrousuario WHERE obs LIKE ?";
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setString(1, "%" + cadastroUsuEnt.getObs() + "%");
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            CadastroUsuario cadastroUsuSaida = new CadastroUsuario(
                rs.getInt("id"),
                rs.getInt("idC"),
                rs.getInt("idU"),
                rs.getString("obs")
            );
            listaCadastroUsuario.add(cadastroUsuSaida);
        }
        stmt.close();
        rs.close();
        return listaCadastroUsuario;
    }
}
