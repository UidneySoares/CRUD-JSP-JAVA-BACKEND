package MODEL;

public class Professor {
    private int id_professor;
    private String nome_professor;
    private String email_professor;
    private String senha_professor;

    /**
     * @return the id_professor
     */
    public int getId_professor() {
        return id_professor;
    }

    /**
     * @param id_professor the id_professor to set
     */
    public void setId_professor(int id_professor) {
        this.id_professor = id_professor;
    }

    /**
     * @return the nome_professor
     */
    public String getNome_professor() {
        return nome_professor;
    }

    /**
     * @param nome_professor the nome_professor to set
     */
    public void setNome_professor(String nome_professor) {
        this.nome_professor = nome_professor;
    }

    /**
     * @return the email_professor
     */
    public String getEmail_professor() {
        return email_professor;
    }

    /**
     * @param email_professor the email_professor to set
     */
    public void setEmail_professor(String email_professor) {
        this.email_professor = email_professor;
    }

    /**
     * @return the senha_professor
     */
    public String getSenha_professor() {
        return senha_professor;
    }

    /**
     * @param senha_professor the senha_professor to set
     */
    public void setSenha_professor(String senha_professor) {
        this.senha_professor = senha_professor;
    }
    
}
