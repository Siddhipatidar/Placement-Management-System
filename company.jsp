<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Company Form</title>
  <link rel="stylesheet" href="company.css">
</head>
<body>
  <center><h1>Company Form</h1></center>
  <form id="companyForm" action="Company" method="POST">
   <input type="hidden" name="task" value="addCompany" />
    <div class="container">
      <label for="name">Name:</label>
      <input type="text" id="name" placeholder="Enter company name" name="name"  required>
      <small class="error" id="nameError"></small>
      <br>
      <label for="companyType">Company Type:</label>
      <input type="text" id="companyType" placeholder="Enter company type"name="company_type" required>
      <small class="error" id="companyTypeError"></small>
      <br>
      <label for="address">Address:</label>
      <input type="text" id="address" placeholder="Enter address" name="address" required>
      <small class="error" id="addressError"></small>
      <br>
      <label for="website">Website:</label>
      <input type="url" id="website" placeholder="Enter website link" name="website" required>
      <small class="error" id="websiteError"></small>
      <br>
      <label for="phoneNumber">Phone Number:</label>
      <input type="text" id="phoneNumber" placeholder="Enter phone no." name="phone_number" required>
      <small class="error" id="phoneError"></small>
      <br>
      <label for="status">Status:</label>
      <select id="status" name="status" required>
        <option value="">Select status</option>
        <option value="Active">Active</option>
        <option value="Inactive">Inactive</option>
      </select>
      <small class="error" id="statusError"></small>
      <br>
      <button type="submit">Add</button>
      <br>
    </div>
  </form>

  <script src="companyscript.js"></script>
</body>
</html>
