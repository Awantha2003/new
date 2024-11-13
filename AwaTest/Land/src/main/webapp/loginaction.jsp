<%@page import="com.product.DatabaseConnector" %>
<%@page import="java.sql.*" %>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        Connection con = DatabaseConnector.getInstance().getConnection();
        Statement st = con.createStatement();
        
        if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
            session.setAttribute("email", email);
            response.sendRedirect("adminHeader.jsp");
        } else {
            ResultSet rs = st.executeQuery("SELECT * FROM users WHERE email='" + email + "' AND password='" + password + "'");
            if (rs.next()) {
            	
                session.setAttribute("email", email);
                response.sendRedirect("	Home.jsp");
                
            } else {
            	
                response.sendRedirect("login.jsp?msg=notexist");
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
        response.sendRedirect("login.jsp?msg=invalid");
    }
%>
