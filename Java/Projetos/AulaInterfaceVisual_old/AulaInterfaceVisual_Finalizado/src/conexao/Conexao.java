/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author J&L
 */
public class Conexao {
    
    public Connection getConexao()
    {
        try{//tentar estabelecer a conexao
            
            Connection conn = DriverManager.getConnection(
                    //"jbdc:mysql://localhost:3306/projetojava?serverTimezone=UTC", //Linha de conexao
                    "jdbc:mysql://localhost:3306/projetojava?useTimezone=true&serverTimezone=UTC&useSSL=false",
                    "root", //usuario do mysql
                    ""
                    );
            Statement stmt = conn.createStatement();
            return conn;
        }catch(Exception e){
            //se der erro na hora de conectar, vai para o catch e aparece mensagem de erro
            System.out.println("Erro ao conectar"+ e.getMessage());
            return null;
        }
    }
}
