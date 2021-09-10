package com.ecommerce.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.ecommerce.connection.DatabaseConnection;
import com.ecommerce.model.*;

public class ProductDao {
	private Connection con;
	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public ProductDao() {
    	try {
			this.con = DatabaseConnection.getConnection();
		}catch (Exception e) {
			e.getMessage();
		}
    }
    
    
    public boolean insertProduct(Product model) {
        boolean result = false;
        try {
            query = "insert into products (name, price, description, c_id, picture) values(?,?,?,?,?)";
            pst = this.con.prepareStatement(query);
            pst.setString(1, model.getName());
            pst.setDouble(2, model.getPrice());
            pst.setString(3, model.getDescription());
            pst.setInt(4, model.getCategory());
            pst.setString(5, model.getImage());
            pst.executeUpdate();
            result = true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return result;
    }
    
    public List<Product> getAllProducts(){
    	List<Product> products =  new ArrayList<>();
    	
    	try {
    		query = "select p.*, c.name as c_name from products p join categories c on c.id = p.c_id";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product row = new Product();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setCategory(rs.getInt("c_id"));
                row.setCategoryName(rs.getString("c_name"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("picture"));
                row.setDescription(rs.getString("description"));
                row.setAdded_at(rs.getTimestamp("added_at").toString());

                products.add(row);
                
                System.out.print(row.getId());
            }
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return products;
    }
    
    
    public void deleteProduct(int id) {
    	try {
    		query = "delete from products where id = ?";
    		pst = this.con.prepareStatement(query);
    		pst.setInt(1, id);
    		pst.execute();
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    }
    
    
    public List<Product> getProductByCategory(int cid){
    	List<Product> products = new ArrayList<Product>();
    	try {
    		query = "select p.*, c.name as c_name from products p join categories c on c.id = p.c_id where p.c_id=?";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, cid);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product row = new Product();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setCategory(rs.getInt("c_id"));
                row.setCategoryName(rs.getString("c_name"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("picture"));
                row.setDescription(rs.getString("description"));
                row.setAdded_at(rs.getTimestamp("added_at").toString());

                products.add(row);
            }
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return products;
    }

}
