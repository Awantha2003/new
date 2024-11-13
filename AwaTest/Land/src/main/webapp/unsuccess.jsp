<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <!-- Custom CSS for styling -->
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f2f5;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #f6d365 0%, #fda085 100%);
        }

        .unsuccess-container {
            background-color: #ffffff;
            border-radius: 15px;
            padding: 40px;
            text-align: center;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            animation: slideDown 0.7s ease-in-out;
            position: relative;
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

        .unsuccess-container h1 {
            font-size: 56px;
            color: #dc3545;
            margin-bottom: 20px;
            position: relative;
            display: inline-block;
            font-weight: bold;
        }

        .unsuccess-container h1::before {
            content: "\f057"; /* FontAwesome icon for 'times-circle' */
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
            position: absolute;
            top: -15px;
            left: -65px;
            font-size: 64px;
            color: #ff4757;
            animation: pulse 1.5s infinite;
        }

        @keyframes pulse {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.2);
            }
            100% {
                transform: scale(1);
            }
        }

        .unsuccess-container p {
            font-size: 20px;
            color: #6c757d;
            margin-bottom: 30px;
        }

        .btn-retry {
            background-color: #28a745;
            color: #fff;
            padding: 15px 30px;
            font-size: 18px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            text-transform: uppercase;
            transition: background-color 0.3s, transform 0.2s;
        }

        .btn-retry:hover {
            background-color: #218838;
            transform: translateY(-3px);
        }

        .bubble {
            position: absolute;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.2);
            bottom: -100px;
            animation: rise 15s infinite;
        }

        .bubble:nth-child(1) {
            width: 100px;
            height: 100px;
            left: 10%;
            animation-duration: 10s;
        }

        .bubble:nth-child(2) {
            width: 60px;
            height: 60px;
            left: 50%;
            animation-duration: 12s;
            animation-delay: 3s;
        }

        .bubble:nth-child(3) {
            width: 80px;
            height: 80px;
            left: 70%;
            animation-duration: 14s;
            animation-delay: 5s;
        }

        @keyframes rise {
            0% {
                transform: translateY(0);
                opacity: 1;
            }
            100% {
                transform: translateY(-1000px);
                opacity: 0;
            }
        }
    </style>

    <title>Unsuccessful Action</title>
</head>
<body>

    <div class="unsuccess-container">
        <h1>Oops!</h1>
        <p>Sorry, something went wrong. Please try again.</p>
        <button class="btn-retry" onclick="retryAction()">Try Again</button>
    </div>

    <!-- Animated floating bubbles for visual effect -->
    <div class="bubble"></div>
    <div class="bubble"></div>
    <div class="bubble"></div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

    <!-- Custom JavaScript -->
    <script>
        function retryAction() {
            // Redirect to retry page or refresh the current page
            window.location.href = 'insertProduct.jsp';  // Change to your desired retry page
        }
    </script>
</body>
</html>
