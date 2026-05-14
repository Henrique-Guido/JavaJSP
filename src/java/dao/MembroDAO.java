package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Membros;
import util.Conexao;

public class MembroDAO {

    // inserir membro novo
    public void inserir(Membros f) {
        String sql = "INSERT INTO membros (nome, cpf, estado, email, categoria, rank) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, f.getNome());
            stmt.setString(2, f.getCpf());
            stmt.setString(3, f.getEstado());
            stmt.setString(4, f.getEmail());
            stmt.setString(5, f.getCategoria());
            stmt.setString(6, f.getRank());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Membro inserido com sucesso");
        } catch (Exception e) {
            System.out.println("Erro inserir: " + e.getMessage());
        }
    }

    // listar membros
    public List<Membros> listar() {
        List<Membros> lista = new ArrayList<>();
        try {
            Connection conn = Conexao.conectar();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM membros ORDER BY nome");
            while (rs.next()) {
                Membros f = new Membros();
                f.setId(rs.getInt("id"));
                f.setNome(rs.getString("nome"));
                f.setCpf(rs.getString("cpf"));
                f.setEstado(rs.getString("estado"));
                f.setEmail(rs.getString("email"));
                f.setCategoria(rs.getString("categoria"));
                f.setRank(rs.getString("rank"));
                lista.add(f);
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("Erro listar: " + e.getMessage());
        }
        return lista;
    }

    // atualizar informações de membros
    public void atualizar(Membros f) {
        String sql = "UPDATE membros SET nome=?, cpf=?, estado=?, email=?, categoria=?, rank=? WHERE id=?";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, f.getNome());
            stmt.setString(2, f.getCpf());
            stmt.setString(3, f.getEstado());
            stmt.setString(4, f.getEmail());
            stmt.setString(5, f.getCategoria());
            stmt.setString(6, f.getRank());
            stmt.setInt(7, f.getId());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Informações de Membro Atualizadas");
        } catch (Exception e) {
            System.out.println("Erro atualizar: " + e.getMessage());
        }
    }

    // excluir membros
    public void excluir(int id) {
        String sql = "DELETE FROM membros WHERE id=?";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Membro Excluído");
        } catch (Exception e) {
            System.out.println("Erro excluir: " + e.getMessage());
        }
    }

    // buscar membros
    public Membros buscar(int id) {
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM membros WHERE id=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Membros f = new Membros();
                f.setId(rs.getInt("id"));
                f.setNome(rs.getString("nome"));
                f.setCpf(rs.getString("cpf"));
                f.setEstado(rs.getString("estado"));
                f.setEmail(rs.getString("email"));
                f.setCategoria(rs.getString("categoria"));
                f.setRank(rs.getString("rank"));
                rs.close();
                stmt.close();
                conn.close();
                return f;
            }
        } catch (Exception e) {
            System.out.println("Erro buscar: " + e.getMessage());
        }
        return null;
    }
}