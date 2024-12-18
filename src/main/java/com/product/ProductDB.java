package com.product;

import java.sql.Connection;
import java.sql.Statement;

import com.user.DBconn;

public class ProductDB {
	
	public static boolean addProduct(String name, String price, String quantity, String category, String image, String description, int userID) {
		
		boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/ecommerce_web"; // add DB name to end **(Meka edit karala commit karanna epa mta massage ekk dnna)**
		String username = "root";
		String pwd = "@Hasindu1998";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DBconn.getConnection();
			Statement stmt = con.createStatement();
			String sql = "INSERT INTO product (product_name, price, qty_available, category, description, productimg, sellerId) VALUES ('"+name+"', '"+price+"', '"+quantity+"', '"+category+"', '"+description+"', '"+image+"', '"+userID+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
