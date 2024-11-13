<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags for responsive design -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">

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
}

/* Header section styles with background image */
.header {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	padding: 20px;
	background-image:
		url('https://images.pexels.com/photos/235925/pexels-photo-235925.jpeg');
	/* Use your image */
	background-size: cover;
	background-position: center;
	height: 500px; /* Adjust height based on your design */
	color: white;
	text-align: center;
}

.logo {
	font-size: 48px;
	font-weight: bold;
	background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
	padding: 10px 20px;
	border-radius: 10px;
}

/* Main content section */
.main-content {
	text-align: center;
	padding: 60px 20px;
	flex-grow: 1;
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

</head>
<body>

	<!-- Header Section with Background Image -->
	<div class="header">
		<div class="logo">Land Management System</div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Destination</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="AboutUs.jsp">AboutUs</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="ContactUs.jsp">Contact</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<!-- Main Content Section -->
	<div class="main-content">
		<h1>Welcome Admin</h1>
		<p>Manage your land assets efficiently | Secure, real-time data,
			and 24/7 system support.</p>
		<a href="dashboard.jsp">
			<button class="cta-button">Get Started</button>
		</a>

		<!-- Image Carousel -->
		<div id="carouselExample" class="carousel slide carousel-container"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="https://images.pexels.com/photos/3845517/pexels-photo-3845517.jpeg"
						class="d-block w-100"
						alt="Aerial view of city buildings near body of water">
				</div>
				<div class="carousel-item">
					<img
						src="https://images.pexels.com/photos/18041018/pexels-photo-18041018.jpeg"
						class="d-block w-100" alt="Las Vegas illuminated at dusk">
				</div>
				<div class="carousel-item">
					<img
						src="https://images.pexels.com/photos/8332863/pexels-photo-8332863.jpeg"
						class="d-block w-100"
						alt="Adams Beach Hotel on Cyprus in birds-eye view">
				</div>
				<div class="carousel-item">
					<img
						src="https://images.pexels.com/photos/142497/pexels-photo-142497.jpeg"
						class="d-block w-100" alt="Green tree near green plants">
				</div>
				<div class="carousel-item">
					<img
						src="https://images.pexels.com/photos/338936/pexels-photo-338936.jpeg"
						class="d-block w-100" alt="Green leafed tree">
				</div>
			</div>
			<!-- Carousel controls -->
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExample" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExample" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>

	<!-- Footer Section -->
	<div class="footer">
		<p>&copy; 2024 Land Management System. All Rights Reserved.</p>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
