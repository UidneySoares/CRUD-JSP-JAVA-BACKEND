package DAO;

import MODEL.Professor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DAOProfessor {
    
    private Connection con;
    private PreparedStatement psmt;
    private ResultSet resultset;
    private Statement statement;
    private ArrayList<Professor> lista_professor = new ArrayList<>();
    
    
    
    //Construtor da conexão
    public DAOProfessor(){
        con = new Conexao().getConexao();
    }
    // Método inserir Professor
    public void inserirProfessor(Professor professor){
        try {
        String sql = "INSERT INTO tb_professor (nome_professor, email_professor, senha_professor) VALUES (?, ?, ?)";
        psmt = con.prepareStatement(sql);
        psmt.setString(1, professor.getNome_professor());
        psmt.setString(2, professor.getEmail_professor());
        psmt.setString(3, professor.getSenha_professor());
        psmt.execute();
        psmt.close();
          
        } catch (Exception e) {
            throw new RuntimeException("Erro na inserção de professor: ", e);
        }
    }
    // Método Consultar Professor
    
    public ArrayList<Professor> exibirProfessor(){
        try {
            String sql = "SELECT * FROM tb_professor";
            statement = con.createStatement();
            resultset = statement.executeQuery(sql);
            
            while(resultset.next()){
            Professor professor = new Professor();
            professor.setId_professor(resultset.getInt("id_professor"));
            professor.setNome_professor(resultset.getString("nome_professor"));
            professor.setEmail_professor(resultset.getString("email_professor"));
            professor.setSenha_professor(resultset.getString("senha_professor"));
            
            lista_professor.add(professor);
            }
     
        } catch (Exception e) {
            throw new RuntimeException("Erro ao exibir disciplinas: ",e);
        }
        return lista_professor;
    }
    // Método Atualizar Professor
    public void atualizarProfessor(Professor professor){
        try {
            String sql = "UPDATE tb_professor SET nome_professor = ?, email_professor = ?, senha_professor = ? WHERE id_professor = ?";
            psmt = con.prepareStatement(sql);
            psmt.setString(1, professor.getNome_professor());
            psmt.setString(2, professor.getEmail_professor());
            psmt.setString(3, professor.getSenha_professor());
            psmt.setInt(4, professor.getId_professor());
            psmt.execute();
            psmt.close();
        } catch (Exception e) {
            throw new RuntimeException("Erro ao atualizar professor: ",e);
        }
    }
    // Método Apagar Professor
    public void excluirProfessor(int valor){
        try {
            String sql = "DELETE FROM tb_professor WHERE id_professor = "+valor;
            statement = con.createStatement();
            statement.execute(sql);
            statement.close();
            
        } catch (Exception e) {
            throw new RuntimeException("Erro ao apagar professor: ",e);
        }
    }
    
    
    //Método Busca por Nome
    public ArrayList<Professor> buscaNomeProfessor(String valor){
        try {
            String sql = "SELECT * FROM tb_professor WHERE nome_professor like '%"+valor+"%'";
            statement = con.createStatement();
            resultset = statement.executeQuery(sql);
            
            while(resultset.next()){
            Professor professor = new Professor();
            professor.setId_professor(resultset.getInt("id_professor"));
            professor.setNome_professor(resultset.getString("nome_professor"));
            professor.setEmail_professor(resultset.getString("email_professor"));
            professor.setSenha_professor(resultset.getString("senha_professor"));
            
            lista_professor.add(professor);
            }
     
        } catch (Exception e) {
            throw new RuntimeException("Erro ao exibir disciplinas: ",e);
        }
        return lista_professor;
    }
}
