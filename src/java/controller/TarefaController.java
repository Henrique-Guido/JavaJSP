package controller;

import java.util.List;
import model.Tarefa;
import dao.TarefaDAO;

public class TarefaController {
    private TarefaDAO dao = new TarefaDAO();

    public void salvar(String titulo, String descricao, String prioridade, String status, String prazo, String responsavel) {
        Tarefa t = new Tarefa();
        t.setTitulo(titulo);
        t.setDescricao(descricao);
        t.setPrioridade(prioridade);
        t.setStatus(status);
        t.setPrazo(prazo);
        t.setResponsavel(responsavel);
        dao.inserir(t);
    }

    public List<Tarefa> listar() {
        return dao.listar();
    }

    public void atualizar(int id, String titulo, String descricao, String prioridade, String status, String prazo, String responsavel) {
        Tarefa t = dao.buscar(id);
        if (t != null) {
            t.setTitulo(titulo);
            t.setDescricao(descricao);
            t.setPrioridade(prioridade);
            t.setStatus(status);
            t.setPrazo(prazo);
            t.setResponsavel(responsavel);
            dao.atualizar(t);
        }
    }

    public void excluir(int id) {
        dao.excluir(id);
    }

    public Tarefa buscar(int id) {
        return dao.buscar(id);
    }
}
