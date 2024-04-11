/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.model.dao;

import dm20241m.model.bean.Sistema;
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
 * @author User
 */
public class DaoSistema {

private final Connection c;
    
    public DaoSistema() throws SQLException, ClassNotFoundException{
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public Sistema excluir(Sistema sisEnt) throws SQLException{
        String sql = "delete from sistema WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,sisEnt.getId());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return sisEnt;
    }
    
    public Sistema buscar(Sistema sisEnt) throws SQLException{
        String sql = "select * from sistema WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,sisEnt.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            Sistema usuSaida = null;
            while (rs.next()) {      
            // criando o objeto Usuario
                usuSaida = new Sistema(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5));
            // adiciona o usu à lista de usus
            }
            stmt.close();
        return usuSaida;
   }

    public Sistema inserir(Sistema sisEnt) throws SQLException{
        String sql = "insert into sistema" + " (nome, servidor, versao, status)" + " values (?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1,sisEnt.getNome());
        stmt.setString(2,sisEnt.getServidor());
        stmt.setString(3,sisEnt.getVersao());
        stmt.setString(4,sisEnt.getStatus());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            sisEnt.setId(id);
        }
        stmt.close();
        return sisEnt;
    }

    public Sistema alterar(Sistema sisEnt) throws SQLException{
        String sql = "UPDATE sistema SET nome = ?, servidor = ?, versao = ?, status = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,sisEnt.getNome());
        stmt.setString(2,sisEnt.getServidor());
        stmt.setString(3,sisEnt.getVersao());
        stmt.setString(4,sisEnt.getStatus());
        stmt.setInt(5,sisEnt.getId());

        // executa
        stmt.execute();
        stmt.close();
        return sisEnt;
    }

   public List<Sistema> listar(Sistema sisEnt) throws SQLException{
        // usus: array armazena a lista de registros
        List<Sistema> sists = new ArrayList<>();
        
        String sql = "select * from sistema where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + sisEnt.getNome() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            Sistema sis = new Sistema(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5)
            );
            // adiciona o usu à lista de usus
            sists.add(sis);
        }
        
        rs.close();
        stmt.close();
        return sists;
   }

    
}
