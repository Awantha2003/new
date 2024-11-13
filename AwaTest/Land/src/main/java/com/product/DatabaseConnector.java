package com.product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnector {

	private String DB_URL = "jdbc:mysql://localhost:3306/land";
	private String DB_USER = "root";
	private String DB_PASSWORD = "Awantha2003@";

	private DatabaseConnector() {
		try {
			// Load the database driver
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.err.println("Database driver not found: " + e.getMessage());
		}
	}

	public static DatabaseConnector getInstance() {
		return SingletonHelper.INSTANCE;
	}

	public Connection getConnection() {
		try {
			return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		} catch (SQLException e) {
			System.err.println("Error establishing database connection: " + e.getMessage());
			return null;
		}
	}

	//  Singleton Design Pattern
	private static class SingletonHelper {
		private static final DatabaseConnector INSTANCE = new DatabaseConnector();
	}
}
