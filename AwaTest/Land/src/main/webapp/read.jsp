<%@ page import="java.util.List" %>
<%@ page import="com.product.ProductDbUtil" %>
<%@ page import="com.product.Product" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            transition: background-color 0.5s, color 0.5s;
        }
        .light-theme {
            background-color: #f0f8ff; /* Light blue background */
            color: #000;
        }
        .dark-theme {
            background-color: #343a40; /* Dark background */
            color: #fff;
        }
        .navbar {
            transition: background-color 0.5s;
        }
        .navbar-light {
            background-color: #f8f9fa;
        }
        .navbar-dark {
            background-color: #343a40;
        }
        .navbar-brand, .navbar-nav .nav-link {
            transition: color 0.5s;
        }
        .navbar-nav .nav-link:hover {
            color: #ff6b00 !important;
        }
        .footer {
            text-align: center;
            padding: 20px;
            position: relative;
            bottom: 0;
            width: 100%;
            margin-top: 20px;
            transition: background-color 0.5s, color 0.5s;
        }
        .footer.light-theme {
            background-color: #f0f8ff;
            color: #000;
        }
        .footer.dark-theme {
            background-color: #343a40;
            color: #fff;
        }
        .card {
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .active-status {
            font-weight: bold;
            font-size: 1.2em;
            margin-top: 5px;
        }
        .active {
            color: green;
        }
        .inactive {
            color: red;
        }
        .progress {
            height: 20px;
        }
        .dashboard-button {
            margin-top: 20px;
            transition: transform 0.3s;
        }
        .dashboard-button:hover {
            transform: scale(1.1);
        }
    </style>
</head>
<body class="light-theme" id="themeBody">

    <!-- Navbar Section -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Land Management System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="productList.jsp">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">Contact</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            More
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">About Us</a></li>
                            <li><a class="dropdown-item" href="#">Services</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#">Feedback</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- Theme Toggle Button -->
        <button class="btn btn-outline-light" id="themeToggle" style="margin-left: auto;">Toggle Theme</button>
    </nav>

    <div class="container mt-5">
        <h2 class="text-center text-success">Product List</h2>

        <div class="row">
            <%
                // Fetch the list of products from the database using ProductDbUtil
                List<Product> products = ProductDbUtil.getAllProducts();
                
                if (products != null && !products.isEmpty()) {
                    for (Product product : products) {
            %>
            <!-- Card Layout for Products -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title"><%= product.getSellerName() %></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Land ID: <%= product.getLandid() %></h6>
                        <p class="card-text">Location: <%= product.getLocation() %></p>
                        <p class="card-text">Email: <%= product.getEmail() %></p>
                        <p class="card-text">Price: $<%= product.getPrice() %></p>
                        
                        <!-- Active Status Display -->
                        <div class="active-status <%= product.isActive() ? "active" : "inactive" %>">
                            <%= product.isActive() ? "Active" : "Inactive" %>
                        </div>

                        <!-- Active Status Progress Bar -->
                        <div class="progress">
                            <div class="progress-bar <%= product.isActive() ? "bg-success" : "bg-danger" %>" role="progressbar"
                                 style="width: <%= product.isActive() ? 100 : 0 %>%;" aria-valuenow="<%= product.isActive() ? 100 : 0 %>"
                                 aria-valuemin="0" aria-valuemax="100">
                                <%= product.isActive() ? "Active" : "Inactive" %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%
                    }
                } else {
            %>
            <div class="col-12">
                <div class="alert alert-warning text-center">No products available.</div>
            </div>
            <%
                }
            %>
        </div>

        <!-- Dashboard Button -->
        <div class="text-center">
            <a href="dashboard.jsp">
                <button class="btn btn-lg btn-success dashboard-button">Go to Dashboard</button>
            </a>
        </div>
    </div>

    <!-- Footer Section -->
    <footer class="footer light-theme">
        <p>&copy; 2024 Land Management System. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const themeToggleButton = document.getElementById('themeToggle');
        const body = document.getElementById('themeBody');
        const footer = document.querySelector('.footer');

        themeToggleButton.addEventListener('click', () => {
            body.classList.toggle('dark-theme');
            body.classList.toggle('light-theme');
            footer.classList.toggle('dark-theme');
            footer.classList.toggle('light-theme');
            themeToggleButton.classList.toggle('btn-dark');
            themeToggleButton.classList.toggle('btn-light');
            themeToggleButton.textContent = body.classList.contains('dark-theme') ? 'Light Theme' : 'Dark Theme';
        });
    </script>
</body>
</html>
