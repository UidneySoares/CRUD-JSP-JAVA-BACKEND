package MODEL;


public class Disciplina {

    /**
     * @return the id_disciplina
     */
    public int getId_disciplina() {
        return id_disciplina;
    }

    /**
     * @param id_disciplina the id_disciplina to set
     */
    public void setId_disciplina(int id_disciplina) {
        this.id_disciplina = id_disciplina;
    }

    /**
     * @return the nome_disciplina
     */
    public String getNome_disciplina() {
        return nome_disciplina;
    }

    /**
     * @param nome_disciplina the nome_disciplina to set
     */
    public void setNome_disciplina(String nome_disciplina) {
        this.nome_disciplina = nome_disciplina;
    }

    /**
     * @return the cargahoraria_disciplina
     */
    public int getCargahoraria_disciplina() {
        return cargahoraria_disciplina;
    }

    /**
     * @param cargahoraria_disciplina the cargahoraria_disciplina to set
     */
    public void setCargahoraria_disciplina(int cargahoraria_disciplina) {
        this.cargahoraria_disciplina = cargahoraria_disciplina;
    }
    private int id_disciplina;
    private String nome_disciplina;
    private int cargahoraria_disciplina;
    
}
