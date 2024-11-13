<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Land Management Dashboard</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

 
    <link rel="stylesheet" href="styles.css">

    <script src="script.js"></script>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f8f9fa 0%, #343a40 100%);
            margin: 0;
            padding: 0;
            transition: background-color 0.5s, color 0.5s;
        }

        .container-fluid {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            transition: background-color 0.5s, box-shadow 0.5s;
        }

        .btn img {
            width: 50px;
            height: 50px;
        }

        .btn p {
            font-size: 16px;
            font-weight: bold;
        }

        .btn {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .btn:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .dark-theme {
            background-color: #343a40; 
            color: #ffffff; 
        }

        .dark-theme .container-fluid {
            background-color: rgba(50, 50, 50, 0.9); 
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
        }

        .dark-theme .btn {
            background-color: #495057; 
            color: #ffffff; 

        .dark-theme .btn:hover {
            background-color: #6c757d; 
        }

        .theme-toggle-button {
            margin-top: 20px;
        }
    </style>
</head>
<body class="light-theme" id="themeBody">
    <div class="container-fluid text-center py-5 bg-light">
        <h1 class="display-4 mb-5">Hello, Admin</h1>

    
        <button class="btn btn-outline-dark theme-toggle-button" id="themeToggle">Toggle Dark/Light Theme</button>

        <div class="row justify-content-center mt-4">
            <div class="col-md-2 mb-4">
                <a href="insertProduct.jsp" class="btn btn-success d-block p-3 shadow">
                    <img src="https://img.icons8.com/?size=100&id=12423&format=png&color=000000" class="img-fluid" alt="Insert Product">
                    <p class="mt-2">Insert New Product</p>
                </a>
            </div>
            <div class="col-md-2 mb-4">
                <a href="read.jsp" class="btn btn-primary d-block p-3 shadow">
                    <img src="https://img.icons8.com/?size=100&id=HmbJ1hyHp39u&format=png&color=000000" class="img-fluid" alt="View Products">
                    <p class="mt-2">View All Products</p>
                </a>
            </div>
            <div class="col-md-2 mb-4">
                <a href="updateProduct.jsp" class="btn btn-warning d-block p-3 shadow">
                    <img src="https://img.icons8.com/?size=100&id=Ek3y5ZqW5Z65&format=png&color=000000" class="img-fluid" alt="Update Product">
                    <p class="mt-2">Update Product</p>
                </a>
            </div>
            <div class="col-md-2 mb-4">
                <a href="deleteProduct.jsp" class="btn btn-danger d-block p-3 shadow">
                    <img src="https://img.icons8.com/?size=100&id=57061&format=png&color=000000" class="img-fluid" alt="Delete Product">
                    <p class="mt-2">Delete Product</p>
                </a>
            </div>
            <div class="col-md-2 mb-4">
                <a href="logout.jsp" class="btn btn-secondary d-block p-3 shadow">
                    <img src="https://img.icons8.com/?size=100&id=qI0D5D4H594Z&format=png&color=000000" class="img-fluid" alt="Logout">
                    <p class="mt-2">Logout</p>
                </a>
            </div>
        </div>
    </div>

   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

  
    <script>
        const themeToggleButton = document.getElementById('themeToggle');
        const body = document.getElementById('themeBody');

        themeToggleButton.addEventListener('click', () => {
            body.classList.toggle('dark-theme');
            body.classList.toggle('light-theme');
            themeToggleButton.classList.toggle('btn-light');
            themeToggleButton.classList.toggle('btn-dark');
            themeToggleButton.textContent = body.classList.contains('dark-theme') ? 'Switch to Light Theme' : 'Switch to Dark Theme';
        });
    </script>
</body>
</html>
