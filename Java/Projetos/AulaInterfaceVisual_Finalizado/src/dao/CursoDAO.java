/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;//Data access objetos, objetos de acesso aos dados
// tem a resposabilidade de se conectar com o banco mais especificamente com a tabela cursos.

import beans.Curso;
import java.sql.Connection;
import conexao.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author J&L
 */
public class CursoDAO {
    private Conexao conexao;
    private Connection conn; 
    
    /*vou criar o construtor da classe. o construtor é executado
      automaticamente sempre que um novo objeto é criado.*/
    
    public CursoDAO(){
        this.conexao=new Conexao();//instanciar a private Conexao
        this.conn=this.conexao.getConexao();//criando a conexão de acordo com o nome do banco usuario e senha da classe conexao, jogando para dentro da variavel coon.
    }
    
    //metodo para inserir um novo curso dentro da tabela curso
    public void inserir(Curso curso){
        //Estrutura da query que queremos executar
        String sql = "INSERT INTO cursos(nomecurso,nivel,duracao) VALUES "
                + "(?, ?, ?)";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);//criou a estutura dentro da variavel stmt
            stmt.setString(1, curso.getNomecurso()); //vai substituir o "?" pelo nome do curso 
            stmt.setString(2, curso.getNivel());
            stmt.setInt(3, curso.getDuracao());
            //comando que vai pegar o código e executar dentro do nosso banco projetojava dentro do servidor do mysql
            stmt.execute();
        }catch (Exception e){
            System.out.println("Erro ao inserir cursos: " + e.getMessage());
        }
    }
    
    public void editar(Curso curso)//Curso curso como parametro
    {     
       String sql="UPDATE cursos SET nomecurso=?, nivel=?, duracao=? WHERE id=?";
       try{
           PreparedStatement stmt = this.conn.prepareStatement(sql);
           stmt.setString(1, curso.getNomecurso());
           stmt.setString(2, curso.getNivel());
           stmt.setInt(3, curso.getDuracao());
           stmt.setInt(4, curso.getId());
           stmt.execute();
       }catch(Exception e){ 
           System.out.println("Erro ao editar curso: " + e.getMessage());
    }
    }
    
    public void excluir(int id)
    {
        String sql = "DELETE FROM cursos WHERE id=?";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.execute();
        } catch (Exception e) {
            System.out.println("Erro ao excluir curso: " + e.getMessage());
        }
    }
    
    public Curso getCurso(int id){
        String sql= "SELECT * FROM cursos WHERE id = ?";
       try{
           PreparedStatement stmt=this.conn.prepareStatement(sql);
           stmt.setInt(1, id);
           ResultSet rs = stmt.executeQuery();//metodo para executar esse select
           Curso curso=new Curso();
           //primeiramente, posiciona o resultset na primeira posicao
           rs.first();
           curso.setId(id);
           curso.setNomecurso(rs.getString("nomecurso"));
           curso.setNivel(rs.getString("nivel"));
           curso.setDuracao(rs.getInt("duracao"));
           return curso;
       }catch(Exception e){ 
           return null;
    }
    }
    public List<Curso> getCursos(String nomecurso)//o import tem que ser import java.util.List;
    {
        //SELECT * FROM cursos WHERE nomecurso LIKE '%A%'
        String sql= "SELECT * FROM cursos WHERE nomecurso LIKE ?"; //querry, executa esse código dentro do banco de dados -  parametro LIKE permite pesquisar partes do nome
        try {
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, "%"+nomecurso+"%");// os % serve para dizer onde no texto a pesquisa vai acontecer.
            ResultSet rs=stmt.executeQuery(); // vai jogar todas as informações coletada na querry e joga dentro dessa variavel rs
            List<Curso> listaCursos=new ArrayList<>();//vai criar um array e vai posibilitar salvar dentro da lista objetos do tipo curso
            
            //Percorre o "rs" e salva as informações dentro de uma variavel "curso" e depois salva a variavel dentro da lista
            while(rs.next()){//o metodo next retornar verdadeiro caso exista uma proxima posição ou registro ou linha dentro do array
                Curso curso=new Curso();
                curso.setId(rs.getInt("id"));
                curso.setNomecurso(rs.getString("nomecurso"));
                curso.setNivel(rs.getString("nivel"));
                curso.setDuracao(rs.getInt("duracao"));
                listaCursos.add(curso);//adiciona as informacoes dentro da listaCursos enquanto o rs for .next
            }
            return listaCursos; //retorna uma lista no final do while para o getcursos
        } catch (Exception e) {
            return null;
        }
                
    }
}
