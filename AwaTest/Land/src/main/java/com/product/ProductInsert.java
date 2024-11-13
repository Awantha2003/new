package com.product;

import java.io.IOException;
import java.math.BigDecimal;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProductInsert")
public class ProductInsert extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String landidStr = request.getParameter("landid");
        String sellerName = request.getParameter("sellerName");
        String location = request.getParameter("location");
        String email = request.getParameter("email");
        String priceStr = request.getParameter("price");
        boolean active = Boolean.parseBoolean(request.getParameter("active"));

        try {
            
            int landid = Integer.parseInt(landidStr);
            BigDecimal price = new BigDecimal(priceStr);

           
            Product product = new Product(landid, sellerName, location, email, price, active);

            // Insert the product into the database
            boolean isInserted = ProductDbUtil.insertProduct(product);

            if (isInserted) {
                request.setAttribute("landid", landid);
                request.setAttribute("sellerName", sellerName);
                request.setAttribute("location", location);
                request.setAttribute("email", email);
                request.setAttribute("price", price);
                request.setAttribute("active", active);
                request.getRequestDispatcher("success.jsp").forward(request, response);
            } else {
              
                response.sendRedirect("unsuccess.jsp?msg=wrong");
            }
        } catch (NumberFormatException e) {
        	
        // == can't enter the Duplicate entry ==
            e.printStackTrace();
            response.sendRedirect("unsuccess.jsp?msg=invalidInput");
        } catch (Exception e) {
          
            e.printStackTrace();
            response.sendRedirect("unsuccess.jsp?msg=error");
        }
    }
}
