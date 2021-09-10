package com.ecommerce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ecommerce.connection.DatabaseConnection;
import com.ecommerce.model.*;

public class CategoryDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public CategoryDao() {
    	try {
			this.con = DatabaseConnection.getConnection();
		}catch (Exception e) {
			e.getMessage();
		}
    }
    
	public List<Category> getAllCategories(){
    	List<Category> categories =  new ArrayList<>();
    	
    	try {
    		query = "select * from categories";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Category row = new Category();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setImagePath(rs.getString("picture"));
                row.setDescription(rs.getString("description"));
                row.setAddedAt(rs.getTimestamp("created_at").toString());

                categories.add(row);
                
                System.out.print(row.getId());
            }
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return categories;
    }
}
