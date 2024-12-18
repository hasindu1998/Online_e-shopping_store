package com.product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.user.DBconn;

public class ProductDB {
	
	public static boolean addProduct(String name, String price, String quantity, String category, String image, String description, int userID) {
		
		boolean isSuccess = false;
		
		
		try {
			
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
	
	
	//get product details of the seller
	public static List<Product> getPeroductDetails(String sellerId){
		
		int newSellerId = Integer.parseInt(sellerId);
		
		ArrayList<Product> products = new ArrayList<>();
		
		try {
			Connection con = DBconn.getConnection();
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM product WHERE sellerId = '"+sellerId+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int Id = rs.getInt(1);
				String productTitle = rs.getString(2);
				String productPrice = rs.getString(3);
				String productQuantity = rs.getString(4);
				String productCategory = rs.getString(5);
				String productDescription = rs.getString(6);
				String productImage = rs.getString(7);
				
				
				Product product = new Product(Id, productTitle, productPrice, productQuantity, productDescription,productCategory, productImage, newSellerId );
				products.add(product);
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return products;
		
	}
}
