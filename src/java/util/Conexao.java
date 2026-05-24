package util;

import java.sql.Connection;
import java.sql.DriverManager;

// classe de conexão com o banco mariadb/mysql
// ajuste login e senha conforme seu ambiente
public class Conexao {
    public static Connection conectar() {
        try {
            Class.forName("org.mariadb.jdbc.Driver"); 
            Connection conn = DriverManager.getConnection(
                "jdbc:mariadb://localhost:3306/listatarefas?" +
                "useUnicode=true&" +
                "characterEncoding=UTF-8&" +
                "useSSL=false&" +
                "serverTimezone=UTC",
                "root",
                "root"
            );
            System.out.println("CONECTADO MariaDB!");
            return conn;
        } catch (Exception e) {
            System.out.println("ERRO CONEXÃO: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
}