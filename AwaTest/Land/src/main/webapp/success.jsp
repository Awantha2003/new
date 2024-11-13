<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!-- Custom CSS for styling -->
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f8ff;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #84fab0 0%, #8fd3f4 100%);
        }

        .success-container {
            background-color: #ffffff;
            border-radius: 15px;
            padding: 40px;
            text-align: center;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            animation: slideDown 0.7s ease-in-out;
        }

        @keyframes slideDown {
            0% {
                transform: translateY(-50px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .success-container h1 {
            font-size: 56px;
            color: #28a745;
            margin-bottom: 20px;
            font-weight: bold;
            position: relative;
        }

        .success-container h1 i {
            margin-right: 10px;
            color: #28a745;
        }

        .success-container p {
            font-size: 20px;
            color: #6c757d;
            margin-bottom: 30px;
        }

        .btn-dashboard {
            background-color: #007bff;
            color: #fff;
            padding: 15px 30px;
            font-size: 18px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            text-transform: uppercase;
            transition: background-color 0.3s, transform 0.2s;
        }

        .btn-dashboard:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }

    </style>
</head>
<body>

    <div class="success-container">
        <h1><i class="fas fa-check-circle"></i> Success</h1>
        <p>Your operation was successfully completed! Time to celebrate.</p>
        <button class="btn-dashboard" onclick="location.href='dashboard.jsp'">Go to Dashboard</button>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
