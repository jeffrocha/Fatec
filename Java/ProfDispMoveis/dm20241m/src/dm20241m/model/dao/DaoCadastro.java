/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.model.dao;

import dm20241m.model.bean.Cadastro; // Alterado para Cadastro
import dm20241m.util.ConexaoDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author J&L
 */


public class DaoCadastro {

    private final Connection c;

    public DaoCadastro() throws SQLException, ClassNotFoundException {
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public Cadastro excluir(Cadastro cadEnt) throws SQLException { // Alterado para Cadastro
        String sql = "delete from cadastro WHERE id = ?"; // Alterado para cadastros
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setInt(1, cadEnt.getId()); // Alterado para Cadastro
        stmt.execute();
        stmt.close();
        c.close();
        return cadEnt;
    }
   

    public Cadastro buscar(Cadastro cadEnt) throws SQLException { // Alterado para Cadastro
        String sql = "select * from cadastro WHERE id = ?"; // Alterado para cadastros
        PreparedStatement stmt = this.c.prepareStatement(sql);
        stmt.setInt(1, cadEnt.getId()); // Alterado para Cadastro
        ResultSet rs = stmt.executeQuery();
        Cadastro cadSaida = null;
        while (rs.next()) {
            cadSaida = new Cadastro(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4)
            );
        }
        stmt.close();
        return cadSaida;
    }

    public Cadastro inserir(Cadastro cadEnt) throws SQLException { // Alterado para Cadastro
        String sql = "insert into cadastro" + " (nome, sobrenome, setor)" + " values (?,?,?)"; // Alterado para cadastros
        PreparedStatement stmt = c.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        stmt.setString(1, cadEnt.getNome()); // Alterado para Cadastro
        stmt.setString(2, cadEnt.getSobrenome()); // Alterado para Cadastro
        stmt.setString(3, cadEnt.getSetor()); // Alterado para Cadastro
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            cadEnt.setId(id); // Alterado para Cadastro
        }
        stmt.close();
        return cadEnt;
    }

    public Cadastro alterar(Cadastro cadEnt) throws SQLException { // Alterado para Cadastro
        String sql = "UPDATE cadastro SET nome = ?, sobrenome = ?, setor = ? WHERE id = ?"; // Alterado para cadastros
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setString(1, cadEnt.getNome()); // Alterado para Cadastro
        stmt.setString(2, cadEnt.getSobrenome()); // Alterado para Cadastro
        stmt.setString(3, cadEnt.getSetor()); // Alterado para Cadastro
        stmt.setInt(4, cadEnt.getId()); // Alterado para Cadastro
        stmt.execute();
        stmt.close();
        return cadEnt;
    }

    public List<Cadastro> listar(Cadastro cadEnt) throws SQLException { // Alterado para Cadastro
        List<Cadastro> cads = new ArrayList<>();
        String sql = "select * from cadastro where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        stmt.setString(1, "%" + cadEnt.getNome() + "%"); // Alterado para Cadastro
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            Cadastro cad = new Cadastro(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4)
            );
            cads.add(cad);
        }
        rs.close();
        stmt.close();
        return cads;
    }
}
