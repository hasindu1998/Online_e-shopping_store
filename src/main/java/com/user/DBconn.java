package com.user;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconn {
	private static String url = "jdbc:mysql://localhost:3306/DB Name";
	private static String username = "root";
	private static String pwd = "Moditha2003";
	private static Connection con;
	
	public static Connection getConnection() {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DriverManager.getConnection(url,username,pwd);
			}
			catch(Exception e) {
				System.out.print("Database Connection Failed!");
			}
			
			return con;
		}
}
