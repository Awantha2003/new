<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Product</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f3f4f6;
            color: #333;
            min-height: 100vh;
            padding: 20px;
        }
        header {
            background-color: #343a40;
            color: #28a745;
            padding: 15px;
            text-align: center;
            margin-bottom: 20px;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-weight: 500;
        }
        h2 {
            color: #28a745;
            font-weight: 600;
            text-align: center;
        }
        .container-fluid {
            max-width: 900px;
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
            margin: 0 auto; /* Center the container */
        }
        label {
            font-weight: 600;
        }
        input[type="text"], input[type="email"], input[type="number"], select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 2px solid #28a745;
            border-radius: 5px;
        }
        .btn-custom {
            background: #28a745;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            width: 100%;
        }
        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 20px;
            position: relative; /* Allow footer to stay at the bottom */
            bottom: 0;
            width: 100%;
        }
        @media (max-width: 768px) {
            .container-fluid {
                padding: 15px;
                margin: 0;
            }
        }
    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <h1>Land Management System</h1>
        <nav>
            <a href="adminHeader.jsp">Home</a>
            <a href="productList.jsp">Products</a>
            <a href="ContactUs.jsp">Contact</a>
        </nav>
    </header>

    <!-- Main Content Section -->
    <div class="container-fluid">
        <h2>Insert Product</h2>
        <form action="ProductInsert" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="landid">Land ID:</label>
                <input type="text" class="form-control" id="landid" name="landid" required>
                <div class="error text-danger" id="landIdError"></div>
            </div>

            <div class="form-group">
                <label for="sellerName">Seller Name:</label>
                <input type="text" class="form-control" id="sellerName" name="sellerName" required>
                <div class="error text-danger" id="sellerNameError"></div>
            </div>

            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" class="form-control" id="location" name="location" required>
                <div class="error text-danger" id="locationError"></div>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
                <div class="error text-danger" id="emailError"></div>
            </div>

            <div class="form-group">
                <label for="price">Price:</label>
                <input type="text" class="form-control" id="price" name="price" required>
                <div class="error text-danger" id="priceError"></div>
            </div>

            <div class="form-group">
                <label for="active">Active:</label>
                <select id="active" name="active" class="form-control">
                    <option value="true">Yes</option>
                    <option value="false">No</option>
                </select>
            </div>

            <button type="submit" class="btn btn-custom">Insert Product</button>
        </form>

        <!-- Success/Error Messages -->
        <c:if test="${param.msg != null}">
            <p class="text-success text-center">${param.msg}</p>
        </c:if>

        <!-- Dashboard Button -->
        <div class="text-center mt-4">
            <a href="dashboard.jsp" class="btn btn-custom">Dashboard</a>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <p>&copy; 2024 Land Management System. All Rights Reserved.</p>
    </footer>

    <script>
        function validateForm() {
            const landId = document.getElementById("landid").value;
            const sellerName = document.getElementById("sellerName").value;
            const location = document.getElementById("location").value;
            const email = document.getElementById("email").value;
            const price = document.getElementById("price").value;
            let valid = true;

            document.querySelectorAll('.error').forEach(error => error.textContent = '');

            if (!landId || landId <= 0) {
                document.getElementById("landIdError").textContent = "Please enter a valid Land ID.";
                valid = false;
            }
            if (!sellerName) {
                document.getElementById("sellerNameError").textContent = "Seller Name is required.";
                valid = false;
            }
            if (!location) {
                document.getElementById("locationError").textContent = "Location is required.";
                valid = false;
            }
            if (!email.includes("@")) {
                document.getElementById("emailError").textContent = "Please enter a valid email.";
                valid = false;
            }
            if (!price || isNaN(price) || price <= 0) {
                document.getElementById("priceError").textContent = "Please enter a valid price.";
                valid = false;
            }

            return valid;
        }
    </script>
</body>
</html>
