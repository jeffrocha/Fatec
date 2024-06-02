/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import beans.Aluno;
import beans.Curso;
import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author J&L
 */
public class AlunoDAO {
    //para estabelecer uma conexão com a base de dados
    private Conexao conexao;
    private Connection conn; 
    
    /*vou criar o construtor da classe. o construtor é executado
      automaticamente sempre que um novo objeto é criado.*/
    
    public AlunoDAO(){
        this.conexao=new Conexao();//instanciar a private Conexao
        this.conn=this.conexao.getConexao();//criando a conexão de acordo com o nome do banco usuario e senha da classe conexao, jogando para dentro da variavel coon.
    }
    
    //metodo para inserir um novo curso dentro da tabela curso
    public void inserir(Aluno aluno){
        //Estrutura da query que queremos executar
        String sql = "INSERT INTO alunos(nomealuno,cursoid) VALUES "
                + "(?, ?)";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);//criou a estutura dentro da variavel stmt
            stmt.setString(1, aluno.getNomealuno()  ); //vai substituir o "?" pelo nome do aluno 
            stmt.setInt(2, aluno.getCursoid().getId());//vai salvar dentro da variavel curso id o curso inteiro e na hora de salvar vai salvar só o id
            //comando que vai pegar o código e executar dentro do nosso banco projetojava dentro do servidor do mysql
            stmt.execute();
        }catch (Exception e){
            System.out.println("Erro ao inserir Aluno: " + e.getMessage());
        }
    }
    
    public void editar(Aluno aluno)//Curso curso como parametro
    {     
       String sql="UPDATE alunos SET nomealuno=?, cursoid=?, WHERE id=?";
       try{
           PreparedStatement stmt = this.conn.prepareStatement(sql);
           stmt.setString(1, aluno.getNomealuno());
           stmt.setInt(2, aluno.getCursoid().getId());
           stmt.setInt(3, aluno.getId());
           stmt.execute();
       }catch(Exception e){ 
           System.out.println("Erro ao editar Aluno: " + e.getMessage());
    }
    }
    
    public void excluir(int id)
    {
        String sql = "DELETE FROM alunos WHERE id=?";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao excluir Aluno: " + e.getMessage());
        }
    }
    public Aluno getAluno(int id)
    {
    String sql= "SELECT * FROM alunos WHERE id = ?";
       try{
           PreparedStatement stmt=this.conn.prepareStatement(sql);
           stmt.setInt(1, id);
           ResultSet rs = stmt.executeQuery();//metodo para executar esse select
           Aluno aluno = new Aluno();
           //primeiramente, posiciona o resultset na primeira posicao
           rs.first();
           aluno.setId(id);
           aluno.setNomealuno(rs.getString("nomealuno"));
           Curso cursoid=new Curso();
           cursoid.setId(rs.getInt("cursoid"));
           aluno.setCursoid(cursoid);
           return aluno;
       }catch(Exception e){ 
           return null;
       }
    }
    
public List<Aluno> getAlunos(String filtro) {
    String sql = "SELECT alunos.id as id, nomealuno, cursoid, nomecurso FROM "
            + "alunos INNER JOIN cursos ON alunos.cursoid = cursos.id "
            + "WHERE LOWER(alunos.nomealuno) LIKE ?";
    
    try {
        PreparedStatement stmt = this.conn.prepareStatement(sql);
        stmt.setString(1, "%" + filtro.toLowerCase() + "%");
        ResultSet rs = stmt.executeQuery();
        List<Aluno> lista = new ArrayList<>();
        while (rs.next()) {
            Aluno aluno = new Aluno();
            Curso curso = new Curso();

            aluno.setId(rs.getInt("id"));
            aluno.setNomealuno(rs.getString("nomealuno"));
            curso.setId(rs.getInt("cursoid"));
            curso.setNomecurso(rs.getString("nomecurso"));
            aluno.setCursoid(curso);

            lista.add(aluno);
        }
        return lista;
    } catch (Exception e) {
        return null;
    }
}

}