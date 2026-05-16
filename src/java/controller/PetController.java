package controller;

import java.util.List;
import model.Pet;
import dao.PetDAO;

public class PetController {
    private PetDAO dao = new PetDAO();

    public void salvar(String nomeAnimal, String especie, String raca, String tutorEmail, String porte, String peso) {
        Pet f = new Pet();
        f.setNomeAnimal(nomeAnimal);
        f.setEspecie(especie);
        f.setRaca(raca);
        f.setTutorEmail(tutorEmail);
        f.setPorte(porte);
        f.setPeso(peso);
        dao.inserir(f);
    }

    public List<Pet> listar() {
        return dao.listar();
    }

    public void atualizar(int id, String nomeAnimal, String especie, String raca, String tutorEmail, String porte, String peso) {
        Pet f = dao.buscar(id);
        if (f != null) {
            f.setNomeAnimal(nomeAnimal);
            f.setEspecie(especie);
            f.setRaca(raca);
            f.setTutorEmail(tutorEmail);
            f.setPorte(porte);
            f.setPeso(peso);
            dao.atualizar(f);
        }
    }

    public void excluir(int id) {
        dao.excluir(id);
    }

    public Pet buscar(int id) {
        return dao.buscar(id);
    }
}
