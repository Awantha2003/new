<%@ page import="java.sql.*" %>
<%@ page import="com.product.DatabaseConnector" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mobileNumber = request.getParameter("mobileNumber");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        // Get the database connection
        DatabaseConnector dbConnector = DatabaseConnector.getInstance();
        conn = dbConnector.getConnection();

        if (conn != null) {
            // Insert the new user into the 'users' table
            String sql = "INSERT INTO users (name, email, mobileNumber, password) VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, mobileNumber);
            stmt.setString(4, password);

            int rowsInserted = stmt.executeUpdate();

            if (rowsInserted > 0) {
                response.sendRedirect("signup.jsp?msg=valid");
            } else {
                response.sendRedirect("signup.jsp?msg=invalid");
            }
        } else {
            response.sendRedirect("signup.jsp?msg=invalid");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        response.sendRedirect("signup.jsp?msg=invalid");
    } finally {
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
