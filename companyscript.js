/**
 * 
 */document.getElementById('companyForm').addEventListener('submit', function (event) {
  event.preventDefault(); // Prevent form submission

  const name = document.getElementById('name');
  const companyType = document.getElementById('companyType');
  const address = document.getElementById('address');
  const website = document.getElementById('website');
  const phoneNumber = document.getElementById('phoneNumber');
  const status = document.getElementById('status');

  let isValid = true;

  // Clear previous error messages
  document.querySelectorAll('.error').forEach(error => error.style.display = 'none');

  // Validate Name
  if (name.value.trim() === '') {
    showError('nameError', 'Company name is required');
    isValid = false;
  }

  // Validate Company Type
  if (companyType.value.trim() === '') {
    showError('companyTypeError', 'Company type is required');
    isValid = false;
  }

  // Validate Address
  if (address.value.trim() === '') {
    showError('addressError', 'Address is required');
    isValid = false;
  }

  // Validate Website
  const websitePattern = /^(https?:\/\/)?([\w\d-]+\.)+[\w-]+(\/[\w\d-]+)*$/;
  if (!websitePattern.test(website.value.trim())) {
    showError('websiteError', 'Invalid website URL');
    isValid = false;
  }

  // Validate Phone Number
  const phonePattern = /^\d{10}$/; // Example: 10 digits only
  if (!phonePattern.test(phoneNumber.value.trim())) {
    showError('phoneError', 'Phone number must be 10 digits');
    isValid = false;
  }

  // Validate Status
  if (status.value === '') {
    showError('statusError', 'Status is required');
    isValid = false;
  }

  // Submit the form if all validations pass
  if (isValid) {
    alert('Form submitted successfully!');
    // Add your submission logic here (e.g., send data to server)
  }
});

function showError(id, message) {
  const errorElement = document.getElementById(id);
  errorElement.textContent = message;
  errorElement.style.display = 'block';
}
