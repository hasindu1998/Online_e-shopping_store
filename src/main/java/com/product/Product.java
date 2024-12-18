package com.product;

public class Product {
	private int id;
	private String productTitle;
	private String productPrice;
	private String productQuantity;
	private String productDescription;
	private String productImage;
	private int sellerId;
	
	public Product(int id, String productTitle, String productPrice, String productQuantity, String productDescription,
			String productImage, int sellerId) {
		this.id = id;
		this.productTitle = productTitle;
		this.productPrice = productPrice;
		this.productQuantity = productQuantity;
		this.productDescription = productDescription;
		this.productImage = productImage;
		this.sellerId = sellerId;
	}

	public int getId() {
		return id;
	}

	public String getProductTitle() {
		return productTitle;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public String getProductQuantity() {
		return productQuantity;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public String getProductImage() {
		return productImage;
	}

	public int getSellerId() {
		return sellerId;
	}

	
}
