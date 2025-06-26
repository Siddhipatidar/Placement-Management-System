<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login </title>
    <link rel="stylesheet" href="userLogin.css">
</head>
<body>
    <br>
    <br>
    <div class="cont">
        <!-- Sign In Form -->
        <div class="form sign-in">
            <h2>Welcome</h2>
            <form action="User" method="POST">
                <input type="hidden" name="task" value="login" />

                <!-- Email input for login -->
                <label>
                    <span>Email</span>
                    <input type="email" name="email" required />
                </label>

                <!-- Password input for login -->
                <label>
                    <span>Password</span>
                    <input type="password" name="password" required />
                </label>

                <p class="forgot-pass">Forgot password?</p>
                
                <!-- Submit button for login -->
                <input type="submit" class="button" value="Login" />
            </form>
        </div>

     
</body>
</html>
