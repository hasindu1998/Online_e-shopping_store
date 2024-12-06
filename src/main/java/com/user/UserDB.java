package com.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDB {
	//Login Validation Function
	public static User isValidUser(String username, String password) {
		
		try {
			Connection con = DBconn.getConnection();
			Statement stmt = con.createStatement();
			String query = "SELECT * FROM user WHERE username = '" + username + "' AND password = '" + password + "' LIMIT 1";

			ResultSet rs = stmt.executeQuery(query);
			if(rs.next()) {
				//retrive all user data
				int id = rs.getInt("userid");
				String uname = rs.getString("username");
				String passwordd = rs.getString("password");
				String Fname = rs.getString("Fname");
				String Lname = rs.getString("Lname");
				String email = rs.getString("Email");
				String phone = rs.getString("mobileno");
				String dob = rs.getString("birthday");
				String usertype = rs.getString("userType");
				String address = rs.getString("address");
				String city = rs.getString("city");
				String province = rs.getString("province");
				String country = rs.getString("country");
				String postalcode = rs.getString("postal_code");
				String propicUrl = rs.getString("profilepic_url");

				//create user object
				User user = new User(id, uname, passwordd, Fname, Lname, email, phone, dob, usertype, address, city, province, country, postalcode, propicUrl);
				return user; //return user object
			}
			else {
				return null;
			}
		}
		catch(Exception e) {
			System.out.println(e);
			return null;
		}
	}

	//Register User Function
	public static boolean registerUser(String Fname, String Lname, String username, String password, String email, String phone, String dob, String usertype, String propicUrl) {
		try {
			Connection con = DBconn.getConnection();
			Statement stmt = con.createStatement();
			String query = "INSERT INTO User (Fname, Lname, username, password, Email, mobileno, birthday, userType, profilepic_url) VALUES ('" + Fname + "', '" + Lname + "', '" + username + "', '" + password + "', '" + email + "', '" + phone + "', '" + dob + "', '" + usertype + "', '" + propicUrl + "')";
			int success = stmt.executeUpdate(query);

			if(success > 0) {
				return true;
			}
			else{
				return false;
			}
		}
		catch(Exception e) {
			System.out.println(e);
			return false;
		}
		
	}
	
	//get all user details
	public static User getUserdetails(int userid) {
			
			try {
					Connection con = DBconn.getConnection();
					Statement stmt = con.createStatement();
					String query = "SELECT * FROM user WHERE userid = '" + userid + "' LIMIT 1";
	
					ResultSet rs = stmt.executeQuery(query);
					if(rs.next()) {
						//retrive all user data
						int id = rs.getInt("userid");
						String uname = rs.getString("username");
						String passwordd = rs.getString("password");
						String Fname = rs.getString("Fname");
						String Lname = rs.getString("Lname");
						String email = rs.getString("Email");
						String phone = rs.getString("mobileno");
						String dob = rs.getString("birthday");
						String usertype = rs.getString("userType");
						String address = rs.getString("address");
						String city = rs.getString("city");
						String province = rs.getString("province");
						String country = rs.getString("country");
						String postalcode = rs.getString("postal_code");
						String propicUrl = rs.getString("profilepic_url");
	
						//create user object
						User user = new User(id, uname, passwordd, Fname, Lname, email, phone, dob, usertype, address, city, province, country, postalcode, propicUrl);
						return user; //return user object
					}
					else {
						return null;
					}
			}catch(Exception e) {
				System.out.println(e);
				return null;
			}
		}
	
}