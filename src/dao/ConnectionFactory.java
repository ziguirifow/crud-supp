package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	public Connection getConexao() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mariadb://localhost:3306/mercado", "root", "");
		} catch (Exception erro) {
			throw new RuntimeException("Erro 1: " + erro);
		}
	}

}
