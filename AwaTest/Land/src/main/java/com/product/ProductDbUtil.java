package com.product;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDbUtil {  // model

    public static boolean insertProduct(Product product) { // Abstraction 
        String query = "INSERT INTO product (landid, sellerName, location, email, price, active) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection con = DatabaseConnector.getInstance().getConnection();
             PreparedStatement pstmt = con.prepareStatement(query)) {

            pstmt.setInt(1, product.getLandid());
            pstmt.setString(2, product.getSellerName());
            pstmt.setString(3, product.getLocation());
            pstmt.setString(4, product.getEmail());
            pstmt.setBigDecimal(5, product.getPrice());
            pstmt.setBoolean(6, product.isActive());

            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0; 

        } catch (SQLException e) {
            System.err.println("Error inserting product: " + e.getMessage());
            return false;
        }
    }

    // Method to update
    public static boolean updateProduct(Product product) {
        String query = "UPDATE product SET sellerName=?, location=?, email=?, price=?, active=? WHERE landid=?";

        try (Connection con = DatabaseConnector.getInstance().getConnection();
             PreparedStatement pstmt = con.prepareStatement(query)) {

            pstmt.setString(1, product.getSellerName());
            pstmt.setString(2, product.getLocation());
            pstmt.setString(3, product.getEmail());
            pstmt.setBigDecimal(4, product.getPrice());
            pstmt.setBoolean(5, product.isActive());
            pstmt.setInt(6, product.getLandid());

            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0; 

        } catch (SQLException e) {
            System.err.println("Error updating product: " + e.getMessage());
            return false;
        }
    }

    // Method to retrieve all products from the database
    public static List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String query = "SELECT * FROM product";

        try (Connection con = DatabaseConnector.getInstance().getConnection();
             PreparedStatement pstmt = con.prepareStatement(query);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {   // remove product 
                Product product = new Product();
                product.setLandid(rs.getInt("landid"));
                product.setSellerName(rs.getString("sellerName"));
                product.setLocation(rs.getString("location"));
                product.setEmail(rs.getString("email"));
                product.setPrice(rs.getBigDecimal("price"));
                product.setActive(rs.getBoolean("active"));
                products.add(product); 
            }
        } catch (SQLException e) {
            System.err.println("Error retrieving products: " + e.getMessage());
        }
        return products; 
    }

    public static Product getProductById(int landid) {
        Product product = null;
        String query = "SELECT * FROM product WHERE landid = ?";

        try (Connection con = DatabaseConnector.getInstance().getConnection();
             PreparedStatement pstmt = con.prepareStatement(query)) {

            pstmt.setInt(1, landid);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                product = new Product(
                    rs.getInt("landid"),
                    rs.getString("sellerName"),
                    rs.getString("location"),
                    rs.getString("email"),
                    rs.getBigDecimal("price"),
                    rs.getBoolean("active")
                );
            }
        } catch (SQLException e) {
            System.err.println("Error retrieving product: " + e.getMessage());
        }
        return product; 
    }

    // Method to delete a product 
    public static boolean deleteProduct(int landid) {
        String query = "DELETE FROM product WHERE landid = ?";

        try (Connection con = DatabaseConnector.getInstance().getConnection();
             PreparedStatement pstmt = con.prepareStatement(query)) {

            pstmt.setInt(1, landid);
            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0; 

        } catch (SQLException e) {
            System.err.println("Error deleting product: " + e.getMessage());
            return false; 
        }
    }
}
