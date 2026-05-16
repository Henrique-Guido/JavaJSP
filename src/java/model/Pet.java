package model;

public class Pet {
    private int id;
    private String nomeAnimal;
    private String especie;
    private String raca;
    private String tutorNome;
    private String tutorEmail;
    private String porte;
    private String peso;

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getNomeAnimal() { return nomeAnimal; }
    public void setNomeAnimal(String nomeAnimal) { this.nomeAnimal = nomeAnimal; }

    public String getEspecie() { return especie; }
    public void setEspecie(String especie) { this.especie = especie; }

    public String getRaca() { return raca; }
    public void setRaca(String raca) { this.raca = raca; }

    public String getTutorNome() { return tutorNome; }
    public void setTutorNome(String tutorNome) { this.tutorNome = tutorNome; }

    public String getTutorEmail() { return tutorEmail; }
    public void setTutorEmail(String tutorEmail) { this.tutorEmail = tutorEmail; }

    public String getPorte() { return porte; }
    public void setPorte(String porte) { this.porte = porte; }

    public String getPeso() { return peso; }
    public void setPeso(String peso) { this.peso = peso; }
}
