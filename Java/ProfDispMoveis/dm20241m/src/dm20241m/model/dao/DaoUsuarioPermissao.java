/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.model.dao;

import dm20241m.model.bean.UsuarioPermissao;
import dm20241m.util.ConexaoDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoUsuarioPermissao {

    private final Connection c;

    public DaoUsuarioPermissao() throws SQLException, ClassNotFoundException {
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public UsuarioPermissao inserir(UsuarioPermissao usuPerEnt) throws SQLException {
        String sql = "INSERT INTO UsuariosPermissoes (idU, idP, obs) VALUES (?, ?, ?)";
        PreparedStatement stmt = c.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
        stmt.setLong(1, usuPerEnt.getIdU());
        stmt.setLong(2, usuPerEnt.getIdP());
        stmt.setString(3, usuPerEnt.getObs());
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            usuPerEnt.setId(rs.getInt(1));
        }
        stmt.close();
        return usuPerEnt;
    }

    public UsuarioPermissao excluir(UsuarioPermissao usuPerEnt) throws SQLException {
        String sql = "DELETE FROM UsuariosPermissoes WHERE id = ?";
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setLong(1, usuPerEnt.getId());
        stmt.executeUpdate();
        stmt.close();
        return usuPerEnt;
    }
    
    public UsuarioPermissao alterar(UsuarioPermissao usuEnt) throws SQLException{
        String sql = "UPDATE UsuariosPermissoes SET idU = ?, idP = ?, obs=? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1, usuEnt.getIdU());
        stmt.setInt(2, usuEnt.getIdP());
        stmt.setString(3, usuEnt.getObs());
        stmt.setInt(4, usuEnt.getId());

        // executa
        stmt.execute();
        stmt.close();
        return usuEnt;
    }
    
    public UsuarioPermissao buscar(UsuarioPermissao usuEnt) throws SQLException{
    String sql = "select * from UsuariosPermissoes WHERE id = ?";
    PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,usuEnt.getId());
        // executa
        ResultSet rs = stmt.executeQuery();
        UsuarioPermissao usuSaida = null;
        while (rs.next()) {      
        // criando o objeto Usuario
            usuSaida = new UsuarioPermissao(
                rs.getInt(1),
                rs.getInt(2),
                rs.getInt(3),
                rs.getString(4));
        // adiciona o usu à lista de usus
        }
        stmt.close();
        return usuSaida;
   }
  
    public List<UsuarioPermissao> listar(UsuarioPermissao usuEnt) throws SQLException{
        // usus: array armazena a lista de registros
        List<UsuarioPermissao> usus = new ArrayList<>();
        
        String sql = "select * from UsuariosPermissoes where obs like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + usuEnt.getObs()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            UsuarioPermissao usu = new UsuarioPermissao(
                rs.getInt(1),
                rs.getInt(2),
                rs.getInt(3),
                rs.getString(4));
            // adiciona o usu à lista de usus
            usus.add(usu);
        }
        rs.close();
        stmt.close();
        return usus;
   }    
 
}
