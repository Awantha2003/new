<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.product.ProductDbUtil"%>
<%
    String msg = request.getParameter("msg");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Product</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background-color: #f0f0f0;
        }

        .header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        .header h1 {
            font-size: 32px;
            font-weight: bold;
            color: #4CAF50; /* Green color for title */
        }

        .container {
            margin-top: 50px;
            display: flex;
            justify-content: center;
        }

        .card {
            border-radius: 10px;
            border: 1px solid #ccc;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        .card-body {
            padding: 30px;
            text-align: center;
        }

        h2 {
            color: #4CAF50; 
        }

        .form-group label {
            color: #333;
            font-size: 16px;
            font-weight: bold;
        }

        input[type="text"] {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            width: 100%;
            font-size: 16px;
        }

        .btn-danger {
            background-color: #4CAF50; 
            border: none;
            padding: 12px 0;
            color: white;
            width: 100%;
            border-radius: 5px;
        }

        .btn-danger:hover {
            background-color: #45a049;
        }

        .message {
            color: #f44336; 
            font-size: 18px;
            margin-bottom: 20px;
        }

        .success-message {
            color: #4CAF50; 
            font-size: 18px;
            margin-bottom: 20px;
        }

        .back-link {
            display: block;
            margin-top: 20px;
            color: #4CAF50; 
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        .footer {
            background-color: #333;
            color: white;
            padding: 15px;
            text-align: center;
            margin-top: 50px;
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="header">
        <h1>Land Management System</h1>
    </div>

    <!-- Main Content Section -->
    <div class="container">
        <div class="card">
            <div class="card-body">
                <h2>Delete Product</h2>
                <div class="text-center">
                    <%
                        if (msg != null) {
                            if (msg.equals("done")) {
                    %>
                                <div class="success-message">Product deleted successfully!</div>
                    <%
                            } else {
                    %>
                                <div class="message">Failed to delete product. Please try again.</div>
                    <%
                            }
                        }
                    %>
                </div>

                <form action="ProductDelete" method="post">
                    <div class="form-group">
                        <label for="landid">Enter Land ID:</label>
                        <input type="text" name="landid" class="form-control" required>
                    </div>
                    <button type="submit" class="btn btn-danger">Delete Product</button>
                </form>

                <a class="back-link" href="dashboard.jsp">Back to Product List</a>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 Land Management System. All Rights Reserved.</p>
    </div>

</body>
</html>
