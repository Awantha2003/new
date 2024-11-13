<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller Registration Form</title>
<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    /* Set the font for the entire page */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f0f4f8;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
    }

    /* Main container holding the image and form */
    .container {
        display: flex;
        background-color: white;
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        width: 900px;
        max-width: 100%;
    }

    /* Style for the image section */
    .image-section {
        flex: 1;
        position: relative;
    }

    /* Ensure the images fit the section properly */
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

    /* Form styling */
    .form-section {
        flex: 1;
        padding: 40px;
    }

    /* Header of the form */
    h1 {
        font-size: 28px;
        color: #00796b;
        margin-bottom: 30px;
        text-align: center;
    }

    /* Form group styling */
    .form-group {
        margin-bottom: 15px;
    }

    /* Style for labels */
    label {
        font-size: 16px;
        color: #00796b;
        display: block;
        margin-bottom: 5px;
    }

    /* Style for input fields */
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    input[type="text"]:focus, input[type="password"]:focus {
        outline: none;
        border-color: #00796b;
    }

    .form-buttons {
        margin-top: 20px;
        text-align: center;
    }

    button {
        padding: 12px 24px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        color: white;
    }

    .submit-btn {
        background-color: #00796b;
        margin-left: 20px;
    }

    .cancel-btn {
        background-color: #e57373;
    }

    button:hover {
        opacity: 0.9;
    }

    @media (max-width: 768px) {
        .container {
            flex-direction: column;
            width: 100%;
            height: auto;
        }
        .image-section {
            height: 250px;
        }
    }
</style>
</head>
<body>
 <div class="container">
   <!-- Image section with two images that will rotate -->
   <div class="image-section">
     <img src="https://images.pexels.com/photos/28206103/pexels-photo-28206103.jpeg" class="active" alt="Image 1">
     <img src="https://images.pexels.com/photos/16598749/pexels-photo-16598749.jpeg" alt="Image 2">
   </div>

   <!-- Seller registration form -->
   <div class="form-section">
     <h1>Seller Registration Form</h1>
     <form action="/register" method="post">
       <div class="form-group">
         <label for="firstName">First Name</label>
         <input type="text" name="firstName" id="firstName" required />
       </div>
       <div class="form-group">
         <label for="lastName">Last Name</label>
         <input type="text" name="lastName" id="lastName" required />
       </div>
       <div class="form-group">
         <label for="username">UserName</label>
         <input type="text" name="username" id="username" required />
       </div>
       <div class="form-group">
         <label for="password">Password</label>
         <input type="password" name="password" id="password" required />
       </div>
       <div class="form-group">
         <label for="address">Address</label>
         <input type="text" name="address" id="address" required />
       </div>
       <div class="form-group">
         <label for="contact">Contact No</label>
         <input type="text" name="contact" id="contact" required />
       </div>
       <div class="form-buttons">
         <button type="button" class="cancel-btn" onclick="resetForm()">Cancel</button>
         <button type="submit" class="submit-btn">Submit</button>
       </div>
     </form>
   </div>
 </div>

 <script>
    // Reset form fields
    function resetForm() {
        document.getElementById('firstName').value = '';
        document.getElementById('lastName').value = '';
        document.getElementById('username').value = '';
        document.getElementById('password').value = '';
        document.getElementById('address').value = '';
        document.getElementById('contact').value = '';
    }

    const images = document.querySelectorAll('.image-section img');
    let currentImageIndex = 0;

    function switchImage() {
        images[currentImageIndex].classList.remove('active');
        currentImageIndex = (currentImageIndex + 1) % images.length;
        images[currentImageIndex].classList.add('active');
    }

    setInterval(switchImage, 5000);
 </script>
</body>
</html>
