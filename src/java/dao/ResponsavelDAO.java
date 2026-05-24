package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Responsavel;
import util.Conexao;

public class ResponsavelDAO {

    public void inserir(Responsavel r) {
        String sql = "INSERT INTO responsaveis (nome, email, telefone, cargo) VALUES (?, ?, ?, ?)";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, r.getNome());
            stmt.setString(2, r.getEmail());
            stmt.setString(3, r.getTelefone());
            stmt.setString(4, r.getCargo());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Responsavel inserido com sucesso");
        } catch (Exception e) {
            System.out.println("Erro inserir: " + e.getMessage());
        }
    }

    public List<Responsavel> listar() {
        List<Responsavel> lista = new ArrayList<>();
        try {
            Connection conn = Conexao.conectar();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM responsaveis ORDER BY nome");
            while (rs.next()) {
                Responsavel r = new Responsavel();
                r.setId(rs.getInt("id"));
                r.setNome(rs.getString("nome"));
                r.setEmail(rs.getString("email"));
                r.setTelefone(rs.getString("telefone"));
                r.setCargo(rs.getString("cargo"));
                lista.add(r);
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("Erro ao listar: " + e.getMessage());
        }
        return lista;
    }

    public void atualizar(Responsavel r) {
        String sql = "UPDATE responsaveis SET nome=?, email=?, telefone=?, cargo=? WHERE id=?";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, r.getNome());
            stmt.setString(2, r.getEmail());
            stmt.setString(3, r.getTelefone());
            stmt.setString(4, r.getCargo());
            stmt.setInt(5, r.getId());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Responsavel atualizado com sucesso");
        } catch (Exception e) {
            System.out.println("Erro atualizar: " + e.getMessage());
        }
    }

    public void excluir(int id) {
        String sql = "DELETE FROM responsaveis WHERE id=?";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Responsavel excluido");
        } catch (Exception e) {
            System.out.println("Erro excluir: " + e.getMessage());
        }
    }

    public Responsavel buscar(int id) {
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM responsaveis WHERE id=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Responsavel r = new Responsavel();
                r.setId(rs.getInt("id"));
                r.setNome(rs.getString("nome"));
                r.setEmail(rs.getString("email"));
                r.setTelefone(rs.getString("telefone"));
                r.setCargo(rs.getString("cargo"));
                rs.close();
                stmt.close();
                conn.close();
                return r;
            }
        } catch (Exception e) {
            System.out.println("Erro buscar: " + e.getMessage());
        }
        return null;
    }
}
