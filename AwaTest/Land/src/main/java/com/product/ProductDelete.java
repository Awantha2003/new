package com.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProductDelete")
public class ProductDelete extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String landidStr = request.getParameter("landid");
        
        try {
            int landid = Integer.parseInt(landidStr); 
            
            
            boolean isDeleted = ProductDbUtil.deleteProduct(landid);

            String redirectMsg = isDeleted ? "done" : "wrong";
            response.sendRedirect("deleteProduct.jsp?msg=" + redirectMsg);
            
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("deleteProduct.jsp?msg=wrong");
        } catch (Exception e) {
            // Handle any other exceptions
            e.printStackTrace();
            response.sendRedirect("deleteProduct.jsp?msg=wrong");
        }
    }
}
