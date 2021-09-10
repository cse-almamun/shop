package com.ecommerce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ecommerce.connection.DatabaseConnection;
import com.ecommerce.model.*;

public class UserDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public UserDao() {
    	try {
			this.con = DatabaseConnection.getConnection();
		}catch (Exception e) {
			e.getMessage();
		}
    }
    
	public User userLoginAuth(String email, String password) {
    	User user = null;
        try {
            query = "select * from users where email=? and password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            if(rs.next()){
            	user = new User();
            	user.setId(rs.getInt("id"));
            	user.setName(rs.getString("name"));
            	user.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
	
	public boolean userRegister(User user) {
		boolean result =  false;
		
		try {
			query = "insert into users(name, email, password) values(?,?,?)";
			pst = this.con.prepareStatement(query);
			pst.setString(1, user.getName());
			pst.setString(2, user.getEmail());
			pst.setString(3, user.getPassword());
			pst.executeUpdate();
			
			result = true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
