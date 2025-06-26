<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.List"%>
<%@ page import="com.college.placement.management.cell.dto.CompanyDTO" %>

<!DOCTYPE html>
<html>
<head>
    <title>Manage Companies</title>
    <style>
        .button1 {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
 <div class="nav-buttons1">
    <!-- View All Companies -->
    <form action="Company" method="get" style="display: inline;">
        <input type="hidden" name="task" value="findAll">
        <button type="submit" class="btn-nav">View Companies</button>
    </form>
</div>

<!-- Company Table Section -->
<%
    if (request.getAttribute("companyDTOList") != null) {
        List<CompanyDTO> companyDTOList = (List<CompanyDTO>) request.getAttribute("companyDTOList");
%>

<h2>Company Data</h2>
<table class="company-table" style="width: 100%; border-collapse: collapse;">
    <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Company Type</th>
            <th>Website</th>
            <th>Phone Number</th>
            <th>Address</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <%
        int index = 1;
        for (CompanyDTO companyDTO : companyDTOList) {
        %>
        <tr>
            <td><%= index++ %></td>
            <td><%= companyDTO.getName() %></td>
            <td><%= companyDTO.getCompany_type() %></td>
            <td><%= companyDTO.getWebsite() %></td>
            <td><%= companyDTO.getPhone_number() %></td>
            <td><%= companyDTO.getAddress() %></td>
            <td><%= companyDTO.getStatus() %></td>
            <td>
                <!-- Edit Button -->
                <form action="Company" method="get" style="display: inline;">
                    <input type="hidden" name="task" value="findById">
                    <input type="hidden" name="id" value="<%= companyDTO.getCompanyId() %>">
                    <button type="submit" class="btn-nav">Edit</button>
                </form>

                <!-- Delete Button -->
                <form action="Company" method="get" style="display: inline;">
                    <input type="hidden" name="task" value="deleteById">
                    <input type="hidden" name="id" value="<%= companyDTO.getCompanyId() %>">
                    <button type="submit" class="btn-nav" onclick="return confirm('Are you sure you want to delete this company?');">Delete</button>
                </form>
            </td>
        </tr>
        <%
        }
        %>
    </tbody>
</table>

<%
    } else {
%>
<p>No companies found.</p>
<%
    }
%>

</div>

</body>
</html>
