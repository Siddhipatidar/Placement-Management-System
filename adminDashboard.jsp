<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <link rel="stylesheet" href="adminDashboard.css">
</head>

<body>
  <div class="dashboard">
    <!-- Sidebar -->
    <aside class="sidebar">
      <h2>Admin Dashboard</h2>
      <nav>
        <ul>
          <li><a href="index.html">Dashboard</a></li>
          <li><a href="viewCompanies.jsp">View Companies</a></li>
          <li><a href="company.jsp">Add Company</a></li>
          <li><a href="view-jobs.jsp">View Jobs</a></li>
          <li><a href="admin.jsp">View Profile</a></li>
          <li><a href="edit-profile.jsp">Edit Profile</a></li>
          <li><a href="logout.jsp">Logout</a></li>
        </ul>
      </nav>
    </aside>

    <!-- Main Content -->
    <main class="main-content">
      <header class="header">
        <h2>Welcome, Admin</h2>
        <div class="user-profile">
          <img src="profile-pic.png" alt="Profile Picture">
          <span>Admin Name</span>
        </div>
      </header>

      <!-- Content Section -->
      <section class="content" id="content-area">
       
      </section>
    </main>
  </div>
</body>
</html>
