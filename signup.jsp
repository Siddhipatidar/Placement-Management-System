<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Signup Page</title>
    <link rel="stylesheet" href="signup.css"> <!-- Link to the CSS file -->
</head>
<body>
    <div class="container">
        <h2>Sign Up</h2>
        <form method="post" action="User">
    <input type="hidden" name="task" value="signup" />
    
    <!-- Name field -->
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required />  <!-- 'required' ensures it's not empty -->

    <!-- Email field -->
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required />

    <!-- Password field -->
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required />

    <button type="submit">Sign Up</button>
    <p class="text-black mt-3">Already have Account ? <a class="text-warning" href="http://localhost:8080/placement-management-cell/userlogin.jsp">Login</a></p>
        
</form>

     
</body>
</html>
