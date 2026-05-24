package controller;

import java.util.List;
import model.Responsavel;
import dao.ResponsavelDAO;

public class ResponsavelController {
    private ResponsavelDAO dao = new ResponsavelDAO();

    public void salvar(String nome, String email, String telefone, String cargo) {
        Responsavel r = new Responsavel();
        r.setNome(nome);
        r.setEmail(email);
        r.setTelefone(telefone);
        r.setCargo(cargo);
        dao.inserir(r);
    }

    public List<Responsavel> listar() {
        return dao.listar();
    }

    public void atualizar(int id, String nome, String email, String telefone, String cargo) {
        Responsavel r = dao.buscar(id);
        if (r != null) {
            r.setNome(nome);
            r.setEmail(email);
            r.setTelefone(telefone);
            r.setCargo(cargo);
            dao.atualizar(r);
        }
    }

    public void excluir(int id) {
        dao.excluir(id);
    }

    public Responsavel buscar(int id) {
        return dao.buscar(id);
    }
}
