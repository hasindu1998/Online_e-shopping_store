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
	public static List<Product> getProductDetails(int sellerId){
		
		int newSellerId = sellerId;
		ArrayList<Product> products = new ArrayList<>();
		
		try {
			Connection con = DBconn.getConnection();
			Statement stmt = con.createStatement();
			String sql = "SELECT * FROM product WHERE sellerId = '"+sellerId+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int productId = rs.getInt(1);
				String productTitle = rs.getString(2);
				String productPrice = rs.getString(3);
				String productQuantity = rs.getString(4);
				String productCategory = rs.getString(5);
				String productDescription = rs.getString(6);
				String productImage = rs.getString(7);
				
				
				Product product = new Product(productId, productTitle, productPrice, productQuantity,productCategory,productDescription, productImage, newSellerId);
				products.add(product);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return products;
		
	}
	
	//Delete product function
	public static boolean deleteProduct(int Id) {
		
		
		try {
			Connection con = DBconn.getConnection();
			Statement stmt = con.createStatement();
			String sql = "DELETE FROM product WHERE productid = '"+Id+"'";
			int success = stmt.executeUpdate(sql);
			
			con.close();
			
			if(success > 0) {
				return true;
			}
			else {
				return false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	
	//get all product details for admin dashboard
	public static List<Product> getAllProducts(){
		
		ArrayList<Product> products = new ArrayList<>();
		
		try {
			Connection con = DBconn.getConnection();
			Statement stmt = con.createStatement();
			String query = "SELECT p.productid, p.product_name, p.price, p.qty_available, p.category, p.sellerId, u.Fname AS description ,u.Lname AS productimg FROM Product p JOIN User u ON  p.sellerId = u.userid;";
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				int productId = rs.getInt("productid");
				String productTitle = rs.getString("product_name");
				String productPrice = rs.getString("price");
				String productQuantity = rs.getString("qty_available");
				String productCategory = rs.getString("category");
				String productDescription = rs.getString("description");
				String productImage = rs.getString("productimg");
				int sellerId = rs.getInt("sellerId");
				
				Product product = new Product(productId, productTitle, productPrice, productQuantity,productCategory,productDescription, productImage, sellerId);
				products.add(product);
			}
			
			return products;
		}
		catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	//get products count for admindb
	public static int getproductCount() {
		try {
			Connection con = DBconn.getConnection();
			Statement stmt = con.createStatement();
			String query = "SELECT COUNT(productid) AS productCount FROM Product";
			
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				int productCount = rs.getInt("productCount");
				return productCount;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
}
