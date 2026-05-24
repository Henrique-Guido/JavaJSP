package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Tarefa;
import util.Conexao;

public class TarefaDAO {

    public void inserir(Tarefa t) {
        String sql = "INSERT INTO tarefas (titulo, descricao, prioridade, status, prazo, responsavel) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, t.getTitulo());
            stmt.setString(2, t.getDescricao());
            stmt.setString(3, t.getPrioridade());
            stmt.setString(4, t.getStatus());
            stmt.setString(5, t.getPrazo());
            stmt.setString(6, t.getResponsavel());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Tarefa inserida com sucesso");
        } catch (Exception e) {
            System.out.println("Erro inserir: " + e.getMessage());
        }
    }

    public List<Tarefa> listar() {
        List<Tarefa> lista = new ArrayList<>();
        try {
            Connection conn = Conexao.conectar();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM tarefas ORDER BY titulo");
            while (rs.next()) {
                Tarefa t = new Tarefa();
                t.setId(rs.getInt("id"));
                t.setTitulo(rs.getString("titulo"));
                t.setDescricao(rs.getString("descricao"));
                t.setPrioridade(rs.getString("prioridade"));
                t.setStatus(rs.getString("status"));
                t.setPrazo(rs.getString("prazo"));
                t.setResponsavel(rs.getString("responsavel"));
                lista.add(t);
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("Erro ao listar: " + e.getMessage());
        }
        return lista;
    }

    public void atualizar(Tarefa t) {
        String sql = "UPDATE tarefas SET titulo=?, descricao=?, prioridade=?, status=?, prazo=?, responsavel=? WHERE id=?";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, t.getTitulo());
            stmt.setString(2, t.getDescricao());
            stmt.setString(3, t.getPrioridade());
            stmt.setString(4, t.getStatus());
            stmt.setString(5, t.getPrazo());
            stmt.setString(6, t.getResponsavel());
            stmt.setInt(7, t.getId());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Tarefa atualizada com sucesso");
        } catch (Exception e) {
            System.out.println("Erro atualizar: " + e.getMessage());
        }
    }

    public void excluir(int id) {
        String sql = "DELETE FROM tarefas WHERE id=?";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Tarefa excluída");
        } catch (Exception e) {
            System.out.println("Erro excluir: " + e.getMessage());
        }
    }

    public Tarefa buscar(int id) {
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM tarefas WHERE id=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Tarefa t = new Tarefa();
                t.setId(rs.getInt("id"));
                t.setTitulo(rs.getString("titulo"));
                t.setDescricao(rs.getString("descricao"));
                t.setPrioridade(rs.getString("prioridade"));
                t.setStatus(rs.getString("status"));
                t.setPrazo(rs.getString("prazo"));
                t.setResponsavel(rs.getString("responsavel"));
                rs.close();
                stmt.close();
                conn.close();
                return t;
            }
        } catch (Exception e) {
            System.out.println("Erro buscar: " + e.getMessage());
        }
        return null;
    }
}
