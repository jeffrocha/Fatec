/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dm20241m.model.dao;
import dm20241m.model.bean.Permissao;
import dm20241m.util.ConexaoDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoPermissao {

    private final Connection c;

    public DaoPermissao() throws SQLException, ClassNotFoundException {
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public List<Permissao> listar(Permissao sisEnt) throws SQLException{
        // usus: array armazena a lista de registros
        List<Permissao> sists = new ArrayList<>();
        
        String sql = "select * from Permissoes where permissao like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + sisEnt.getPermissao()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Usuario
            Permissao sis = new Permissao(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3));
            // adiciona o usu à lista de usus
            sists.add(sis);
        }
        rs.close();
        stmt.close();
        return sists;
   }

    public Permissao inserir(Permissao perEnt) throws SQLException {
        String sql = "INSERT INTO Permissoes (permissao, descritivo) VALUES (?, ?)";
        PreparedStatement stmt = c.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
        stmt.setString(1, perEnt.getPermissao());
        stmt.setString(2, perEnt.getDescritivo());
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            perEnt.setId(rs.getInt(1));
        }
        stmt.close();
        return perEnt;
    }

    public Permissao alterar(Permissao perEnt) throws SQLException {
        String sql = "UPDATE Permissoes SET permissao = ?, descritivo = ? WHERE id = ?";
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setString(1, perEnt.getPermissao());
        stmt.setString(2, perEnt.getDescritivo());
        stmt.setLong(3, perEnt.getId());
        stmt.executeUpdate();
        stmt.close();
        return perEnt;
    }

    public Permissao excluir(Permissao perEnt) throws SQLException {
        String sql = "DELETE FROM Permissoes WHERE id = ?";
        PreparedStatement stmt = c.prepareStatement(sql);
        stmt.setLong(1, perEnt.getId());
        stmt.executeUpdate();
        stmt.close();
        return perEnt;
    }
    
     public Permissao Buscar(Permissao perEnt) throws SQLException {
        String sql = "select * from Permissoes WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,perEnt.getId());
            // executa
            ResultSet rs = stmt.executeQuery();
            Permissao usuSaida = null;
            while (rs.next()) {      
            // criando o objeto Usuario
                usuSaida = new Permissao(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3));
            // adiciona o usu à lista de usus
            }
            stmt.close();
        return usuSaida;
   }
     
}
