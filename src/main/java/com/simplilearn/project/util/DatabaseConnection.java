package com.simplilearn.project.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
private Connection connections;
	
	//create a constructor
	public DatabaseConnection(String url , String user, String password) throws ClassNotFoundException, SQLException{
		// step #1 . load a JDBC Driver
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		//step #2 : obtain a Connection object to control database
		this.connections = DriverManager.getConnection(url, user, password);
	}
	
	public Connection getConnection() {
		return connections;
	}
	
	
	public void closeConnection() throws SQLException {
		if (this.connections != null){
			this.connections.close();
		}
	}
}
