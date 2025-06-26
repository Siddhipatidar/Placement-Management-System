/**
 * 
 */// script.js
document.getElementById('loginForm').addEventListener('submit', function(event) {
  event.preventDefault(); // Prevent form submission

  const email = document.getElementById('email').value;
  const password = document.getElementById('password').value;
  const errorMessage = document.getElementById('error-message');

  // Basic admin login credentials (for demo purposes only)
  const adminEmail = "email";
  const adminPassword = "password123";

  if (email === adminEmail && password === adminPassword) {
    alert('Login successful!');
    // Redirect to admin dashboard (example: admin.html)
    window.location.href = 'admin.html';
  } else {
    errorMessage.textContent = "Invalid username or password!";
  }
});
