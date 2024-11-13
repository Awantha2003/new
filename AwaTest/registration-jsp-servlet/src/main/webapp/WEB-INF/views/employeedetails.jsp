<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #2ecc71, #27ae60);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: white;
        }

        .message-box {
            background-color: #fff;
            color: #2c3e50;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            text-align: center;
            max-width: 500px;
            width: 100%;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
        }

        .back-link {
            margin-top: 20px;
            display: inline-block;
            padding: 12px 24px;
            background-color: #27ae60;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .back-link:hover {
            background-color: #2ecc71;
        }
    </style>
</head>
<body>
    <div class="message-box">
        <h1>Employee Successfully Registered!</h1>
        <p>Thank you for registering. You can now login to access your account.</p>
        <a href="<%= request.getContextPath() %>/login" class="back-link">Go to Login</a>
    </div>
</body>
</html>
