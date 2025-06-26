// Get all the links for different sections
const dashboardLink = document.getElementById('home-link');
const viewCompanyLink = document.getElementById('view-company-link');
const addCompanyLink = document.getElementById('company-link');
const viewJobsLink = document.getElementById('view-jobs-link');
const viewProfileLink = document.getElementById('view-profile-link');
const editProfileLink = document.getElementById('edit-profile-link');
const logoutLink = document.getElementById('logout-link');

const contentArea = document.getElementById('content-area');

// Event listeners for each link
dashboardLink.addEventListener('click', () => {
  contentArea.innerHTML = `
    <h3>Dashboard Overview</h3>
    <div class="stats">
      <div class="stat-box" style="background-color: #ff7675;">
        <h3>Total Companies</h3>
        <p>20</p>
      </div>
      <div class="stat-box" style="background-color: #74b9ff;">
        <h3>Jobs Posted</h3>
        <p>120</p>
      </div>
      <div class="stat-box" style="background-color: #55efc4;">
        <h3>Active Users</h3>
        <p>350</p>
      </div>
    </div>
  `;
});

viewCompanyLink.addEventListener('click', () => {
  contentArea.innerHTML = `
    <h3>Company List</h3>
    <ul>
      <li>Company 1</li>
      <li>Company 2</li>
      <li>Company 3</li>
      <li>Company 4</li>
    </ul>
  `;
});

addCompanyLink.addEventListener('click', () => {
  contentArea.innerHTML = `
    <h3>Add New Company</h3>
    <form>
      <label for="company-name">Company Name:</label>
      <input type="text" id="company-name" name="company-name"><br><br>
      <label for="company-location">Location:</label>
      <input type="text" id="company-location" name="company-location"><br><br>
      <input type="submit" value="Add Company">
    </form>
  `;
});

viewJobsLink.addEventListener('click', () => {
  contentArea.innerHTML = `
    <h3>Job Listings</h3>
    <ul>
      <li>Job 1</li>
      <li>Job 2</li>
      <li>Job 3</li>
      <li>Job 4</li>
    </ul>
  `;
});

viewProfileLink.addEventListener('click', () => {
  contentArea.innerHTML = `
    <h3>Admin Profile</h3>
    <p>Name: Admin Name</p>
    <p>Email: admin@example.com</p>
  `;
});

editProfileLink.addEventListener('click', () => {
  contentArea.innerHTML = `
    <h3>Edit Profile</h3>
    <form>
      <label for="admin-name">Name:</label>
      <input type="text" id="admin-name" name="admin-name" value="Admin Name"><br><br>
      <label for="admin-email">Email:</label>
      <input type="email" id="admin-email" name="admin-email" value="admin@example.com"><br><br>
      <input type="submit" value="Save Changes">
    </form>
  `;
});

logoutLink.addEventListener('click', () => {
  alert("You have been logged out.");
  // Redirect or close session logic goes here
});
