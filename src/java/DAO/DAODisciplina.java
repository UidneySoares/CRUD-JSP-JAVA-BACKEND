package DAO;
import MODEL.Disciplina;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class DAODisciplina {

    private Connection con;
    private PreparedStatement psmt;
    private Statement statement;
    private ResultSet resultset;
    private ArrayList<Disciplina> lista_disciplina = new ArrayList<>();
    

    //Construtor da conexão
    public DAODisciplina() {
        con = new Conexao().getConexao();
    }

    // Método inserir Disciplina
    public void inserirDisciplina(Disciplina disciplina) {
        
        try {
            String sql = "INSERT INTO tb_disciplina (nome_disciplina, cargahoraria_disciplina) VALUES (?, ?)";

            psmt = con.prepareStatement(sql);
            psmt.setString(1, disciplina.getNome_disciplina());
            psmt.setInt(2, disciplina.getCargahoraria_disciplina());
            psmt.execute();
            psmt.close();

        } catch (Exception e) {
            throw new RuntimeException("Erro no método de inserção da disciplina: ", e);
        }
    }
    
    // Método Consultar Disciplina
    public ArrayList<Disciplina> exibirDisciplina(){
        try {
            String sql = "SELECT * FROM tb_disciplina";
            statement = con.createStatement();
            resultset = statement.executeQuery(sql);
            
            while(resultset.next()){
            Disciplina disciplina = new Disciplina();
            disciplina.setId_disciplina(resultset.getInt("id_disciplina"));
            disciplina.setNome_disciplina(resultset.getString("nome_disciplina"));
            disciplina.setCargahoraria_disciplina(resultset.getInt("cargahoraria_disciplina"));
            lista_disciplina.add(disciplina);
            }
     
        } catch (Exception e) {
            throw new RuntimeException("Erro ao exibir disciplinas: ",e);
        }
        return lista_disciplina;
    }
    
    // Método Atualizar Disciplina
    public void atualizarDisciplina(Disciplina disciplina){
        try {
            String sql = "UPDATE tb_disciplina SET nome_disciplina = ?, cargahoraria_disciplina = ? WHERE id_disciplina = ?";
            psmt = con.prepareStatement(sql);
            psmt.setString(1, disciplina.getNome_disciplina());
            psmt.setInt(2, disciplina.getCargahoraria_disciplina());
            psmt.setInt(3, disciplina.getId_disciplina());
            psmt.execute();
            psmt.close();
            
 
        } catch (Exception e) {
            throw new RuntimeException("Erro ao atualizar disciplina: ",e);
        }
    }
    
    // Método Apagar Disciplina
    public void excluirDisciplina(int valor){
        try {
            String sql = "DELETE FROM tb_disciplina WHERE id_disciplina = "+valor;
            statement = con.createStatement();
            statement.execute(sql);
            statement.close();
        } catch (Exception e) {
            throw new RuntimeException ("Erro ao excluir disciplina: ",e);
        }
    }
    
    
    // Método Consultar por Nome as Disciplinas
    public ArrayList<Disciplina> buscaNomeDisciplina(String valor){
        try {
            String sql = "SELECT * FROM tb_disciplina WHERE nome_disciplina like '%"+valor+"%' ";
            statement = con.createStatement();
            resultset = statement.executeQuery(sql);
            
            while(resultset.next()){
            Disciplina disciplina = new Disciplina();
            disciplina.setId_disciplina(resultset.getInt("id_disciplina"));
            disciplina.setNome_disciplina(resultset.getString("nome_disciplina"));
            disciplina.setCargahoraria_disciplina(resultset.getInt("cargahoraria_disciplina"));
            lista_disciplina.add(disciplina);
            }
     
        } catch (Exception e) {
            throw new RuntimeException("Erro ao exibir busca disciplinas: ",e);
        }
        return lista_disciplina;
    }
}
