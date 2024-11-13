<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Signup</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f7;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        .form-container {
            display: flex;
            max-width: 900px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .image-section {
            width: 50%;
            background-color: #eee;
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
            color: #2d6a4f;
            margin-bottom: 20px;
            text-align: left;
            font-size: 24px;
        }

        .form-section input[type="text"],
        .form-section input[type="email"],
        .form-section input[type="number"],
        .form-section input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-section input[type="submit"] {
            padding: 10px 20px;
            background-color: #2d6a4f;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .form-section input[type="submit"]:hover {
            background-color: #3a8367;
        }

        .error-message {
            color: #d9534f;
            margin-top: 10px;
            text-align: center;
        }

        .whysign {
            margin-top: 20px;
            text-align: center;
        }

        .whysign h1 {
            color: #d9534f;
        }

        h2 a {
            text-decoration: none;
            color: #2d6a4f;
            font-weight: bold;
        }

        h2 a:hover {
            color: #3a8367;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <div class="image-section">
                <img src="https://images.pexels.com/photos/28206103/pexels-photo-28206103.jpeg" alt="Image 1" class="active">
                <img src="https://images.pexels.com/photos/16598749/pexels-photo-16598749.jpeg" alt="Image 2">
            </div>

            <div class="form-section">
                <h2>Seller Signup</h2>
                <form action="signupaction.jsp" method="post" onsubmit="return validateForm()">
                    <input type="text" name="name" placeholder="Enter Name" required>
                    <input type="email" name="email" placeholder="Enter Email" required>
                    <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
                    <input type="password" name="password" placeholder="Enter Password" required>
                    <input type="submit" value="Signup">
                    <div class="error-message" id="error-message" style="display:none;"></div>
                </form>

                <div class="whysign">
                    <% 
                    String msg = request.getParameter("msg");
                    if ("valid".equals(msg)) { %>
                        <h1>Successfully Registered!</h1>
                    <% } else if ("invalid".equals(msg)) { %>
                        <h1>Unsuccessful Registration</h1>
                    <% } %>
                </div>

                <h2><a href="login.jsp">Login</a></h2>
            </div>
        </div>
    </div>

    <script>
        let currentImageIndex = 0;
        const images = document.querySelectorAll('.image-section img');

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

        function validateForm() {
            const name = document.querySelector('input[name="name"]').value.trim();
            const email = document.querySelector('input[name="email"]').value.trim();
            const mobileNumber = document.querySelector('input[name="mobileNumber"]').value.trim();
            const password = document.querySelector('input[name="password"]').value.trim();
            const errorMessage = document.getElementById('error-message');
            
            errorMessage.style.display = 'none'; 

            if (!name || !email || !mobileNumber || !password) {
                errorMessage.textContent = 'Please fill in all fields.';
                errorMessage.style.display = 'block'; 
                return false; 
            }
            return true; 
        }
    </script>
</body>
</html>
