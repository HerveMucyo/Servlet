<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="styles.css"> <!-- Include your styles.css file -->
    <style>
        /* Additional styles for the homepage */
        /* Replace 'background.jpg' with your image */
        body {
            background-image: url('home.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        /* Additional styles for the top navigation bar */
/* Additional styles for the top navigation bar */
.topnav {
    background-color: transparent; /* Transparent background */
    overflow: hidden;
    position: absolute;
    top: 0;
    width: 100%;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Add box shadow to the bottom */
}

.topnav-right {
    position: absolute;
    top: 0;
    right: 0;
}

.login-link,
.signup-link {
    display: inline-block;
    color: black; /* Black text color */
    text-decoration: none;
    padding: 14px 16px;
    margin-right: 10px;
}

.login-link:hover,
.signup-link:hover {
    background-color: #007bff;
    color: white;
}

.container{
margin-bottom: 60px;
    max-width: 300px;
    text-align: center;
    padding: 30px;
    background-color: transparent;
    /* Background color with transparency */
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
    /* Box shadow for depth */
    animation: fadeIn 1s ease-in-out;
    /* Fade-in animation */
}
/* Styles for the login and sign-up icons */
.fa-sign-in-alt,
.fa-user-plus {
    margin-left: 5px;
    color: black; /* Black icon color */
}

.topnav a {
    float: left;
    display: block;
    color: black; /* Black text color */
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.topnav a:hover {
    background-color: #007bff;
    color: white;
}

/* Additional styles for the footer */
.footer {
    background-color: transparent;
    color: white;
    text-align: center;
    padding: 10px 0;
    position: absolute;
    bottom: 0;
    width: 100%;
}

    </style>
</head>
<body>

<!-- Top Navigation Bar -->
<div class="topnav">
    <a href="#">Home</a>
    <a href="#">About</a>
    <a href="#">Services</a>
    <a href="#">Contact</a>
     <div class="topnav-right">
        <a href="Login.jsp" class="login-link">Login <i class="fas fa-sign-in-alt"></i></a>
        <a href="signup.jsp" class="signup-link">Sign Up <i class="fas fa-user-plus"></i></a>
    </div>
</div>

<!-- Content Container -->
<div class="container">
    <h1>Welcome to Our Homepage</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin bibendum lacinia justo, sit amet maximus elit dapibus vel.</p>
    <a href="#" class="btn btn-primary">Learn More</a>
</div>

<!-- Footer -->
<div class="footer">
    <p>&copy; 2023 Your Company Name</p>
    <p>1234 Street Name, City, Country</p>
</div>

</body>
</html>
