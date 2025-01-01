package com.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDB {
	
	//Login Validation Function
	public static User isValidUser(String username, String password) {
		try {
			Connection con = DBconn.getConnection();
			Statement stmt = con.createStatement();
			String query = "SELECT * FROM user WHERE username = '" + username + "' AND password = '" + password + "' LIMIT 1";

			ResultSet rs = stmt.executeQuery(query); // executeQuery used for READ
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
				
				//close connection
				con.close();
				
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
			int success = stmt.executeUpdate(query); //executeUpdate used for CREATE,UPDATE,DELETE
			
			//close connection
			con.close();

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
						
						//close connection
						con.close();
						
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

	//update user details method
	public static boolean updateUser(int userid, String Fname, String Lname, String email, String phone, String dob, String address, String city, String province, String country, String postalcode) {
		try {
				Connection con = DBconn.getConnection();
				Statement stmt = con.createStatement();
				String query = "UPDATE user SET Fname = '" + Fname + "', Lname = '" + Lname + "', Email = '" + email + "', mobileno = '" + phone + "', birthday = '" + dob + "', address = '" + address + "', city = '" + city + "', province = '" + province + "', country = '" + country + "', postal_code = '" + postalcode + "' WHERE userid = '" + userid + "'";
				int success = stmt.executeUpdate(query);
				
				//close connection
				con.close();
	
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
	
	//update profilepic function
	public static boolean updatePropic(int userid, String imgname) {
		try {
				Connection con = DBconn.getConnection();
				Statement stmt = con.createStatement();
				String query = "UPDATE user SET profilepic_url = '"+ imgname +"'  WHERE userid = '" + userid + "'";
				int success = stmt.executeUpdate(query);
				
				//close connection
				con.close();
	
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
	
	
	//Update Password Function
	public static boolean updatePassword(int userid, String newPwd) {
		try {
				Connection con = DBconn.getConnection();
				Statement stmt = con.createStatement();
				String query = "UPDATE user SET password ='"+newPwd+"'  WHERE userid = '" + userid + "'";
				int success = stmt.executeUpdate(query);
				
				//close connection
				con.close();
	
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
	
	
	//delete user function
	public static boolean deleteUser(int userid) {
		try {
				Connection con = DBconn.getConnection();
				Statement stmt = con.createStatement();
				String query = "DELETE FROM user WHERE userid = '" + userid + "'";
				int success = stmt.executeUpdate(query);
				
				//close connection
				con.close();
	
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
	
	//get all users function for admin dashboard
	public static List<User> getallUsers() {
		
		ArrayList<User> user = new ArrayList<>();
		
		try {
			
				Connection con = DBconn.getConnection();
				Statement stmt = con.createStatement();
				String query = "SELECT * FROM user";
	
				ResultSet rs = stmt.executeQuery(query);
				while(rs.next()) {
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
					User users = new User(id, uname, passwordd, Fname, Lname, email, phone, dob, usertype, address, city, province, country, postalcode, propicUrl);
					user.add(users);
				}
				
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return user; // return user list
		
	}
	
	
	// Count Users for admin dashboard
	public static int userCount() {
		
		try {
			Connection con = DBconn.getConnection();
			Statement stmt = con.createStatement();
			String query = "SELECT COUNT(userid) AS UserCount FROM User";
			
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				int usercount = rs.getInt("UserCount");
				return usercount;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
}