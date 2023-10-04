<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container">
        <h1>Sign Up</h1>
        <form id="signup-form" action="signupServlet" method="post" >
            <input type="text" id="first-name" placeholder="First Name" required>
            <input type="text" id="last-name" placeholder="Last Name" required>
            <input type="text" id="email" placeholder="Email" name="email" required>
            <input type="password" id="password" placeholder="Password" name="password" required>
            <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm Password" required>
            <input type="date" id="birthdate" placeholder="Date of Birth" required>
            <input type="tel" id="phone" placeholder="Phone Number" required>
            <input type="text" id="address" placeholder="Address" required>
            <input type="text" id="city" placeholder="City" required>
            <input type="text" id="country" placeholder="Country" required>
            <span id="password-error" class="error"></span>
            <button type="submit">Sign Up</button>
        </form>
        <a href="Login.jsp">Sign In</a>
    </div>
</body>
</html>