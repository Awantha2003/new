<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #121212;
            color: #f8f9fa;
            font-family: 'Arial', sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            border: 2px solid #28a745;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 15px rgba(0, 255, 0, 0.2);
            width: 80%; /* Responsive container */
        }

        .image-section {
            width: 50%;
            height: 100%;
            position: relative;
        }

        .image-section img {
            width: 100%;
            height: 100%;
            object-fit: cover; /* Ensure the image covers the entire area */
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
            padding: 50px;
            background-color: #212529;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: left;
        }

        .form-section h2 {
            color: #28a745;
            margin-bottom: 20px;
            font-size: 28px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Image section -->
        <div class="image-section">
            <img src="https://images.pexels.com/photos/28206103/pexels-photo-28206103.jpeg" alt="Image 1" class="active">
            <img src="https://images.pexels.com/photos/16598749/pexels-photo-16598749.jpeg" alt="Image 2">
        </div>

        <!-- Form section -->
        <div class="form-section">
            <h2>Forgot Password</h2>
            <form action="forgetPasswordAction.jsp" method="post">
                <input type="email" id="email" name="email" class="form-control mb-3" placeholder="Enter Email" required>
                <input type="text" id="mobileNumber" name="mobileNumber" class="form-control mb-3" placeholder="Enter Mobile Number" required>
                <input type="password" id="newPassword" name="newPassword" class="form-control mb-3" placeholder="Enter New Password" required>
                <input type="submit" value="Save" class="btn btn-success">
            </form>
            <a href="login.jsp" class="text-success">Login</a>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Custom JavaScript -->
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

        // Set an interval to change images every 5 seconds
        setInterval(changeImage, 5000);
    </script>
</body>
</html>
