<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.product.Product" %>
<%@ page import="com.product.ProductDbUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Update Product</title>
</head>
<body>
<%
    String msg = request.getParameter("msg");
    Product product = null;

    // Check if a product ID is passed to retrieve the product details
    String landidStr = request.getParameter("landid");
    if (landidStr != null) {
        int landid = Integer.parseInt(landidStr);
        product = ProductDbUtil.getProductById(landid); // Fetch product by ID
    }
%>

<h2>Update Product</h2>

<% if (msg != null) { %>
    <div style="color: <%= msg.equals("done") ? "green" : "red" %>;">
        <%= msg.equals("done") ? "Product updated successfully!" : "Failed to update product." %>
    </div>
<% } %>

<% if (product != null) { %>
    <form action="ProductUpdate" method="post">
        <input type="hidden" name="landid" value="<%= product.getLandid() %>"/>

        <label for="sellerName">Seller Name:</label>
        <input type="text" name="sellerName" value="<%= product.getSellerName() %>" required /><br/>

        <label for="location">Location:</label>
        <input type="text" name="location" value="<%= product.getLocation() %>" required /><br/>

        <label for="email">Email:</label>
        <input type="email" name="email" value="<%= product.getEmail() %>" required /><br/>

        <label for="price">Price:</label>
        <input type="number" step="0.01" name="price" value="<%= product.getPrice() %>" required /><br/>

        <label for="active">Active:</label>
        <input type="checkbox" name="active" <%= product.isActive() ? "checked" : "" %> /><br/>

        <input type="submit" value="Update Product"/>
    </form>
<% } else { %>
    <div style="color: red;">Product not found!</div>
<% } %>

<a href="addNewProduct.jsp">Back to Add New Product</a>
</body>
</html>
