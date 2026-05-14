package controller;

import java.util.List;
import model.Membros;
import dao.MembroDAO;

public class MembroController {
    private MembroDAO dao = new MembroDAO();

    // adicionar 
    public void salvar(String nome, String cpf, String estado, String email, String categoria, String rank) {
        Membros f = new Membros();
        f.setNome(nome);
        f.setCpf(cpf);
        f.setEstado(estado);
        f.setEmail(email);
        f.setCategoria(categoria);
        f.setRank(rank);
        dao.inserir(f);
    }

    // listar
    public List<Membros> listar() {
        return dao.listar();
    }

    // atualizar
    public void atualizar(int id, String nome, String cpf, String estado, String email, String categoria, String rank) {
        Membros f = dao.buscar(id);
        if (f != null) {
            f.setNome(nome);
            f.setCpf(cpf);
            f.setEstado(estado);
            f.setEmail(email);
            f.setCategoria(categoria);
            f.setRank(rank);
            dao.atualizar(f);
        }
    }

    // excluir
    public void excluir(int id) {
        dao.excluir(id);
    }

    // buscar
    public Membros buscar(int id) {
        return dao.buscar(id);
    }
}