package com.ecommerce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ecommerce.connection.DatabaseConnection;
import com.ecommerce.model.*;

public class AdminDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public AdminDao() {
    	try {
			this.con = DatabaseConnection.getConnection();
		}catch (Exception e) {
			e.getMessage();
		}
    }
    
    
    public Admin adminLoginAuth(String email, String password) {
    	Admin admin = null;
        try {
            query = "select * from admin where email=? and password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            if(rs.next()){
            	admin = new Admin();
            	admin.setId(rs.getInt("id"));
            	admin.setName(rs.getString("name"));
            	admin.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return admin;
    }
}
