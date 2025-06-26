<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Signup</title>
  <link rel="stylesheet" href="adminSignup.css">
</head>
<body>
  <div class="signup-container">
    <h1>Admin Signup</h1>
    <p>Create your account to manage the system efficiently.</p>
    <form action="Admin" method="POST">
      <input type="hidden" name="task" value="signup">
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your full name" required>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>
      </div>
      <div class="form-actions">
        <button type="submit">Signup</button>
        <button type="button" class="cancel-btn">Cancel</button>
      </div>
      <div class="extra-options">
        <input type="checkbox" id="rememberMe" name="rememberMe" checked>
        <label for="rememberMe">Remember me</label>
        <a href="#" class="forgot-password">Forgot password?</a>
      </div>
    </form>
  </div>
</body>
</html>
