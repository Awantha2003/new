<%@ page import="java.sql.*" %>
<%@ page import="com.product.DatabaseConnector" %>

<%
    String email = request.getParameter("email");
    String mobileNumber = request.getParameter("mobileNumber");
    String newPassword = request.getParameter("newPassword");

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
       
        DatabaseConnector dbConnector = DatabaseConnector.getInstance();
        conn = dbConnector.getConnection();

        if (conn != null) {
            // Update the password for the user with the matching email and mobile number
            String sql = "UPDATE users SET password = ? WHERE email = ? AND mobileNumber = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, newPassword);
            stmt.setString(2, email);
            stmt.setString(3, mobileNumber);

            int rowsUpdated = stmt.executeUpdate();

            if (rowsUpdated > 0) {
                
                response.sendRedirect("success.jsp");
            } else {
            	  response.sendRedirect("unsuccess.jsp");
            }
        } else {
            out.println("<h3>Error: Could not establish a database connection.</h3>");
        }

    } catch (SQLException e) {
        out.println("<h3>SQL Error: " + e.getMessage() + "</h3>");
    } finally {
        // Close resources
        if (stmt != null) try { stmt.close(); } catch (SQLException e) { }
        if (conn != null) try { conn.close(); } catch (SQLException e) { }
    }
%>
