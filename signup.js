/**
 * 
 */document.getElementById("signupForm").addEventListener("submit", function (event) {
    const password = this.password.value;
    const confirmPassword = this.confirm_password.value;

    // Basic password validation
    if (password !== confirmPassword) {
        event.preventDefault(); // Prevent form submission
        alert("Passwords do not match!");
    }
});
