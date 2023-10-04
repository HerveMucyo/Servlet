<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
 <div class="container">
        <h1>Login</h1>
        <form id="login-form" action="LoginServelet" method="post" accept-charset="UTF-8">
            <input type="text" id="login-email" name="email" placeholder="Email" required>
<input type="password" id="login-password" name="password" placeholder="Password" required>
            <button type="submit">Log In</button>
        </form>
        <a href="signup.jsp">Sign Up</a>
        <a href="forgotPassword.jsp">Forgot Password</a>
    </div>
</body>
</html>