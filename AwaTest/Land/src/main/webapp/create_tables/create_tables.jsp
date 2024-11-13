<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

<%
try {
    // Get connection from ConnectionProvider
    Connection con = ConnectionProvider.getCon();

    // If connection is successful
    if (con != null) {
        Statement st = con.createStatement();

        // SQL to create the "users" table
        String q1 = "CREATE TABLE users (" +
                    "name VARCHAR(100), " +
                    "email VARCHAR(100) PRIMARY KEY, " +
                    "mobileNumber BIGINT, " +
                    "password VARCHAR(100)" +
                    ")";
        
        // SQL to create the "product" table
        String q2 = "CREATE TABLE product (" +
                    "landid INT, " +
                    "sellerName VARCHAR(500), " +
                    "location VARCHAR(400), " +
                    "email VARCHAR(100), " +
                    "price INT, " +
                    "active VARCHAR(10)" +
                    ")";
        
        // Commenting out the execution of q1 and q2
        // System.out.print("Executing query: " + q1);
        // st.execute(q1);
        // System.out.print("Table 'users' created successfully\n");

        // System.out.print("Executing query: " + q2);
        // st.execute(q2);
        // System.out.print("Table 'product' created successfully\n");

        // SQL to create the "cart" table
        String q3 = "CREATE TABLE cart (" +
                    "email VARCHAR(100), " +
                    "product_id INT, " +
                    "quantity INT, " +
                    "price INT, " +
                    "total INT, " +
                    "address VARCHAR(500), " +
                    "city VARCHAR(100), " +
                    "state VARCHAR(100), " +
                    "country VARCHAR(100), " +
                    "mobileNumber BIGINT, " +
                    "orderDate VARCHAR(100), " +
                    "deliveryDate VARCHAR(100), " +
                    "PaymentMethod VARCHAR(100), " +
                    "transactionId VARCHAR(100), " +
                    "status VARCHAR(10)" +
                    ")";
        
        // Execute q3 query
        System.out.print("Executing query: " + q3);
        st.execute(q3);
        System.out.print("Table 'cart' created successfully\n");

        // Close the connection
        con.close();
    } else {
        System.out.print("Failed to create a database connection.");
    }

} catch(Exception e) {
    // Print exception details
    System.out.print("Error: " + e);
}
%>
