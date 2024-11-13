<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&family=Roboto:wght@400;500&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- FontAwesome Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f4f4f9;
            font-family: 'Roboto', sans-serif;
        }

        .contact-header {
            text-align: center;
            padding: 50px 20px;
            background-color: #28a745; /* Changed to green */
            color: white;
        }

        .contact-header h1 {
            font-size: 48px;
            font-family: 'Montserrat', sans-serif;
            text-transform: uppercase;
        }

        .contact-header p {
            font-size: 20px;
            margin-top: 10px;
        }

        .contact-details {
            padding: 40px;
            background-color: white;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .contact-details h2 {
            font-size: 28px;
            font-family: 'Montserrat', sans-serif;
            margin-bottom: 20px;
            color: #333;
        }

        .contact-details .info {
            margin-bottom: 20px;
            font-size: 18px;
        }

        .contact-details .info strong {
            display: inline-block;
            width: 100px;
            color: #333;
        }

        .contact-details .info i {
            color: #007bff;
            margin-right: 10px;
        }

        .map-container iframe {
            width: 100%;
            height: 450px;
            border: none;
            margin-top: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .social-icons {
            margin-top: 30px;
        }

        .social-icons i {
            font-size: 24px;
            margin: 0 10px;
            color: #007bff;
            transition: color 0.3s;
        }

        .social-icons i:hover {
            color: #0056b3;
        }
        
        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 40px 0;
        }

        .footer a {
            color: #ff6b00;
            text-decoration: none;
            margin-left: 5px;
        }
    </style>
</head>
<body>

    <div class="contact-header">
        <h1>Contact Us</h1>
        <p>We'd love to hear from you! Reach out to us with any questions or inquiries.</p>
    </div>

    <div class="container">
        <div class="row mt-5">
            <!-- Contact Details -->
            <div class="col-md-6">
                <div class="contact-details">
                    <h2>Contact Details</h2>

                    <div class="info">
                        <i class="fas fa-envelope"></i> <strong>Email:</strong> info@island.com
                    </div>

                    <div class="info">
                        <i class="fas fa-phone-alt"></i> <strong>Phone:</strong> +123-456-7890
                    </div>

                    <div class="info">
                        <i class="fas fa-map-marker-alt"></i> <strong>Address:</strong> 221/B Baker Street, Negombo, Sri Lanka
                    </div>

                    <div class="social-icons">
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>

            <!-- Google Map -->
            <div class="col-md-6">
                <div class="map-container">
                    <h2>Our Location</h2>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.8354345092976!2d144.9537353155041!3d-37.816279742021734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0xf5771d2d3a8f582d!2s123%20Land%20Street%2C%20Melbourne%20VIC%203000%2C%20Australia!5e0!3m2!1sen!2sau!4v1617194921529!5m2!1sen!2sau"></iframe>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="footer">
        <p>&copy; 2024 Property Management System. All Rights Reserved.</p>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

    <!-- Bootstrap JS and dependencies (Popper.js and jQuery) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.11/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
