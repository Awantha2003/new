<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags for responsive design -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome for icons -->
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>

    <!-- Embedded CSS for additional styling -->
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2; /* Lighter background */
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background:url('https://media.istockphoto.com/id/1329960632/vector/yellow-and-green-watercolor-background-for-spring.jpg?s=612x612&w=0&k=20&c=sl7US__tvveSaaX64tTG-O6LfA8MsriUkQtTiFvEx5Q=');
            background-size:cover;
        }

        /* Header section styles with background image */
        .header {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            background-image: url('https://images.pexels.com/photos/235925/pexels-photo-235925.jpeg'); /* Use your image */
            background-size: cover;
            background-position: center;
            height: 360px; /* Adjust height based on your design */
            color: white;
            text-align: center;
            margin-bottom: 40px;
        }
        

        .logo {
            font-size: 58px;
            font-weight: bold;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            padding: 10px 20px;
            border-radius: 10px;
        }
        
        .navbar{
        	width: 100%;
        	margin-top: 120px;
        }

        /* Main content section */
        .main-content {
            text-align: center;
            padding: 60px 20px;
            flex-grow: 1;
        }
        
        h1{
        	font-size: 69px;
        }
        
        p{
        	font-size: 20px;
        }

        .cta-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #ff6b00;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .cta-button:hover {
            background-color: #ff4c00;
        }

        /* Carousel styling */
        .carousel-container {
            position: relative;
            width: 80%; /* Shrunk the size further */
            max-width: 600px; /* Limited to a max width */
            margin: 50px auto;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1); /* Softer shadow */
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
	<title>IsLand</title>
</head>
<body>

    <!-- Header Section with Background Image -->
    <div class="header">
        <div class="logo">Property Management System</div><br>
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <div class="mid mx-auto">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AboutUs.jsp">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="gateway.jsp">Payment Gateway</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Inquiry</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
    </div>

    <!--  -->
    <div class="main-content"> 
        <h1>Welcome!</h1> 
        <p>Welcome to the official site of IsLand Property Management System.</p>
        <a href="landcard.jsp">
            <button class="cta-button">Get Started</button>
        </a>

        <!-- Image Carousel -->
        <div id="carouselExample" class="carousel slide carousel-container" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://i2.au.reastatic.net/800x600/27849292a7b51190c416b729fcff8494f4024de147504c900b29d75f90e694a1/image.jpg" class="d-block w-100" alt="Aerial view of city buildings near body of water">
                </div>
                <div class="carousel-item">
                    <img src="https://t3.ftcdn.net/jpg/03/62/18/34/360_F_362183460_4n0UlAKQ39ATMMkUxBEXmpLo1wQujTqd.jpg" class="d-block w-100" alt="Las Vegas illuminated at dusk">
                </div>
                <div class="carousel-item">
                    <img src="https://i2.au.reastatic.net/800x600/569eaf329650d61fc94cf2c79f650270702d908b82ba00c541cfa17a171ce321/main.jpg" class="d-block w-100" alt="Adams Beach Hotel on Cyprus in birds-eye view">
                </div>
                <div class="carousel-item">
                    <img src="https://media.istockphoto.com/id/1437629749/photo/land-plot-in-aerial-view-in-chiang-mai-of-thailand.jpg?s=612x612&w=0&k=20&c=07y-L9_WJwFGmvvhrZULYbfTfDtUPHnxJhbxWPTiqYg=" class="d-block w-100" alt="Green tree near green plants">
                </div>
                <div class="carousel-item">
                    <img src="https://i2.au.reastatic.net/800x600/d23153b966b2227f58ed9bf2acda5a573af614ee58a64b97fa0784752fedbfd0/image.jpg" class="d-block w-100" alt="Green leafed tree">
                </div>
            </div>
            <!-- Carousel controls -->
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 Property Management System. All Rights Reserved.</p>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
