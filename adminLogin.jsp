<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Admin Login</title>
  <link rel="stylesheet" href="adminLogin.css">
</head>
<body>
  <div class="login-container">
    <h1>Admin Login</h1>
    <form action="Admin" method="POST" id="loginForm">
                <input type="hidden" name="task" value="login" />
      <div class="form-group">
        <label for="email">Email</label>
        <input type="text" id="email" name="email" placeholder="Enter your email" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>
      </div>
      <button type="submit">Login</button>
      <p id="error-message"></p>
    </form>
  </div>
 
</body>
</html>
