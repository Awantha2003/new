<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5; 
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            display: flex;
            flex-direction: row;
            max-width: 900px;
            width: 100%;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .image-section {
            width: 50%;
            position: relative;
        }

        .image-section img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }

        .image-section img.active {
            opacity: 1;
        }

        .form-section {
            width: 50%;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .form-section h2 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
            font-weight: bold;
        }

        .form-section input[type="email"],
        .form-section input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-section input[type="submit"] {
            padding: 12px;
            background-color: #28a745; 
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .form-section input[type="submit"]:hover {
            background-color: #218838;
        }

        .form-section .link {
            margin-top: 20px;
            text-align: center;
        }

        .form-section .link a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        .form-section .link a:hover {
            color: #0056b3;
        }

        .alert-section {
            margin-top: 20px;
            text-align: center;
        }

        .whysignLogin h1 {
            color: #dc3545;
            text-align: center;
            font-size: 28px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Login Form Container -->
        <div class="form-container">
            <!-- Image section -->
            <div class="image-section">
                <img src="https://images.pexels.com/photos/28206103/pexels-photo-28206103.jpeg" alt="Image 1" class="active">
                <img src="https://images.pexels.com/photos/16598749/pexels-photo-16598749.jpeg" alt="Image 2">
            </div>

            <!-- Form Section -->
            <div class="form-section">
                <h2>Login to Your Account</h2>
                <form action="loginaction.jsp" method="post">
                    <input type="email" name="email" placeholder="Enter Email" required>
                    <input type="password" name="password" placeholder="Enter Password" required>
                    <input type="submit" value="Login">
                </form>

                <div class="link">
                    <a href="signup.jsp">Create an Account</a> |
                    <a href="forgotPassword.jsp">Forgot Password?</a>
                </div>
            </div>
        </div>

        <!-- Message Section -->
        <div class="alert-section">
            <%
            String msg = request.getParameter("msg");
            if ("notexist".equals(msg)) {
            %>
            <h1 class="alert alert-danger">Incorrect Username or Password</h1>
            <%
            }
            if ("invalid".equals(msg)) {
            %>
            <h1 class="alert alert-danger">Something Went Wrong! Try Again!</h1>
            <%
            }
            %>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        let currentImageIndex = 0;
        const images = document.querySelectorAll('.image-section img');

        // Function to change the image
        function changeImage() {
            images.forEach((img, index) => {
                img.classList.remove('active');
                if (index === currentImageIndex) {
                    img.classList.add('active');
                }
            });
            currentImageIndex = (currentImageIndex + 1) % images.length;
        }

        setInterval(changeImage, 5000);
    </script>
</body>
</html>
