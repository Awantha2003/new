package net.javaguides.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.javaguides.registration.model.Employee;

public class EmployeeDao {

    // SQL query for inserting employee into the database
    private static final String INSERT_USERS_SQL = "INSERT INTO employee" +
            "  (first_name, last_name, username, password, address, contact) VALUES " +
            " (?, ?, ?, ?, ?, ?);";

    // Register employee into the database
    public int registerEmployee(Employee employee) throws ClassNotFoundException {
        int result = 0;

        // Load the MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Database connection
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "Awantha2003@");
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {

            // Set the values for the SQL placeholders
            preparedStatement.setString(1, employee.getFirstName());
            preparedStatement.setString(2, employee.getLastName());
            preparedStatement.setString(3, employee.getUsername());
            preparedStatement.setString(4, employee.getPassword());
            preparedStatement.setString(5, employee.getAddress());
            preparedStatement.setString(6, employee.getContact());

            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            printSQLException(e);
        }

        return result;
    }

    // Method to handle SQL exceptions
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
