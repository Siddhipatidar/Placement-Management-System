package com.college.placement.management.cell.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.college.placement.management.cell.dto.AdminDTO;
import com.college.placement.management.cell.util.DBUtil;

public class AdminDAO {

    private DBUtil dbUtil;

    // Constructor to initialize the DBUtil object
    public AdminDAO(DBUtil dbUtil) {
        this.dbUtil = dbUtil;
    }

    // SQL Queries
    private static final String ADMIN_DATA_INSERT = "INSERT INTO admin(name, email, password) VALUES (?, ?, ?)";
    private static final String ADMIN_DATA_UPDATE = "UPDATE admin SET name = ?, email = ?, password = ? WHERE id = ?";
    private static final String ADMIN_DATA_DELETE = "DELETE FROM admin WHERE id = ?";
    private static final String ADMIN_DATA_FIND_FOR_LOGIN = "SELECT * FROM admin WHERE email = ? AND password = ?";
    private static final String ADMIN_DATA_FIND_ALL = "SELECT * FROM admin";

    // Save User data (Insert)
    public int save(AdminDTO adminDTO) throws ClassNotFoundException, SQLException {
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int count = 0;

        try {
            connection = dbUtil.getConnection();
            pstmt = connection.prepareStatement(ADMIN_DATA_INSERT, PreparedStatement.RETURN_GENERATED_KEYS);

            pstmt.setString(1, adminDTO.getName());
            pstmt.setString(2, adminDTO.getEmail());
            pstmt.setString(3, adminDTO.getPassword());

            count = pstmt.executeUpdate();

            // Retrieve the generated ID and set it in the DTO
            if (count > 0) {
                rs = pstmt.getGeneratedKeys();
                if (rs.next()) {
                	adminDTO.setAdminId(rs.getInt(1)); // Set the generated ID in the DTO
                }
            }
        } catch (Exception e) {
            throw e;
        } finally {
            dbUtil.close(connection, pstmt, rs); // Close resources
        }
        return count;
    }

    // Login User (Find by email and password)
    public AdminDTO login(String email, String password) throws Exception {
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        AdminDTO adminDTO = null;

        try {
            connection = dbUtil.getConnection();
            pstmt = connection.prepareStatement(ADMIN_DATA_FIND_FOR_LOGIN);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            if (rs.next()) {
            	adminDTO = new AdminDTO();
            	adminDTO.setAdminId(rs.getInt("adminid"));
            	adminDTO.setName(rs.getString("name"));
            	adminDTO.setEmail(rs.getString("email"));
            	adminDTO.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            throw e;
        } finally {
            dbUtil.close(connection, pstmt, rs); // Close resources
        }
        return adminDTO;
    }

    // Update User data by ID
    public int update(AdminDTO adminDTO) throws Exception {
        Connection connection = null;
        PreparedStatement pstmt = null;
        int count;

        try {
            connection = dbUtil.getConnection();
            pstmt = connection.prepareStatement(ADMIN_DATA_UPDATE);
            pstmt.setString(1, adminDTO.getName());
            pstmt.setString(2, adminDTO.getEmail());
            pstmt.setString(3, adminDTO.getPassword());
            pstmt.setInt(4, adminDTO.getAdminId()); // Set ID for the WHERE clause

            count = pstmt.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            dbUtil.close(connection, pstmt); // Close resources
        }
        return count;
    }

    // Delete User by ID
    public int deleteById(int id) throws Exception {
        Connection connection = null;
        PreparedStatement pstmt = null;
        int count;

        try {
            connection = dbUtil.getConnection();
            pstmt = connection.prepareStatement(ADMIN_DATA_DELETE);
            pstmt.setInt(1, id); // Set the ID to delete

            count = pstmt.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            dbUtil.close(connection, pstmt); // Close resources
        }
        return count;
    }

    // You can add additional methods here, such as find all users, find user by ID, etc.
}
