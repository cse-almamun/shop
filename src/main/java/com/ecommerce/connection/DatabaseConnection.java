package com.ecommerce.connection;

import java.sql.*;

public class DatabaseConnection {
	private static Connection connection = null;
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if(connection == null){
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_ecommerce","root","");
            System.out.print("connected");
        }
        return connection;
    }
}
