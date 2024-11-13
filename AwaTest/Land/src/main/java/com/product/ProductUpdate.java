package com.product;

import java.io.IOException;
import java.math.BigDecimal;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProductUpdate")
public class ProductUpdate extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String landidStr = request.getParameter("landid");
        String sellerName = request.getParameter("sellerName");
        String location = request.getParameter("location");
        String email = request.getParameter("email");
        String priceStr = request.getParameter("price");
        boolean active = Boolean.parseBoolean(request.getParameter("active"));

        // Update Product object in the database
        try {
            int landid = Integer.parseInt(landidStr); 
            BigDecimal price = new BigDecimal(priceStr); 

          
            Product product = new Product(landid, sellerName, location, email, price, active);

            // Update product in the database   
            boolean isUpdated = ProductDbUtil.updateProduct(product); 
            
            String redirectMsg = isUpdated ? "Update successful" : "Update failed";
            response.sendRedirect("updateProduct.jsp?msg=" + redirectMsg);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            
             response.sendRedirect("updateProduct.jsp?msg=Invalid input format.");
        } catch (Exception e) {
            // Handle other exceptions
            e.printStackTrace();
            response.sendRedirect("updateProduct.jsp?msg=Unexpected error occurred.");
        }
    }
}
