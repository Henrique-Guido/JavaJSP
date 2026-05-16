package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Pet;
import util.Conexao;

public class PetDAO {

    public void inserir(Pet f) {
        String sql = "INSERT INTO pets (nome_animal, especie, raca, tutor_email, porte, peso) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, f.getNomeAnimal());
            stmt.setString(2, f.getEspecie());
            stmt.setString(3, f.getRaca());
            stmt.setString(4, f.getTutorEmail());
            stmt.setString(5, f.getPorte());
            stmt.setString(6, f.getPeso());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Pet inserido com sucesso");
        } catch (Exception e) {
            System.out.println("Erro inserir: " + e.getMessage());
        }
    }

    public List<Pet> listar() {
        List<Pet> lista = new ArrayList<>();
        try {
            Connection conn = Conexao.conectar();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM pets ORDER BY nome_animal");
            while (rs.next()) {
                Pet f = new Pet();
                f.setId(rs.getInt("id"));
                f.setNomeAnimal(rs.getString("nome_animal"));
                f.setEspecie(rs.getString("especie"));
                f.setRaca(rs.getString("raca"));
                f.setTutorEmail(rs.getString("tutor_email"));
                f.setPorte(rs.getString("porte"));
                f.setPeso(rs.getString("peso"));
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

    public void atualizar(Pet f) {
        String sql = "UPDATE pets SET nome_animal=?, especie=?, raca=?, tutor_email=?, porte=?, peso=? WHERE id=?";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, f.getNomeAnimal());
            stmt.setString(2, f.getEspecie());
            stmt.setString(3, f.getRaca());
            stmt.setString(4, f.getTutorEmail());
            stmt.setString(5, f.getPorte());
            stmt.setString(6, f.getPeso());
            stmt.setInt(7, f.getId());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Informações do Pet Atualizadas");
        } catch (Exception e) {
            System.out.println("Erro atualizar: " + e.getMessage());
        }
    }

    public void excluir(int id) {
        String sql = "DELETE FROM pets WHERE id=?";
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            System.out.println("Pet Excluído");
        } catch (Exception e) {
            System.out.println("Erro excluir: " + e.getMessage());
        }
    }

    public Pet buscar(int id) {
        try {
            Connection conn = Conexao.conectar();
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM pets WHERE id=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                Pet f = new Pet();
                f.setId(rs.getInt("id"));
                f.setNomeAnimal(rs.getString("nome_animal"));
                f.setEspecie(rs.getString("especie"));
                f.setRaca(rs.getString("raca"));
                f.setTutorEmail(rs.getString("tutor_email"));
                f.setPorte(rs.getString("porte"));
                f.setPeso(rs.getString("peso"));
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
