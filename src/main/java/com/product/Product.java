package com.product;

public class Product {
	private int productId;
	private String productTitle;
	private String productPrice;
	private String productQuantity;
	private String productCategory;
	private String productDescription;
	private String productImage;
	private int sellerId;
	
	
	public Product(int productId, String productTitle, String productPrice, String productQuantity, String productCategory,
			String productDescription, String productImage, int sellerId) {
		this.productId = productId;
		this.productTitle = productTitle;
		this.productPrice = productPrice;
		this.productQuantity = productQuantity;
		this.productCategory = productCategory;
		this.productDescription = productDescription;
		this.productImage = productImage;
		this.sellerId = sellerId;
	}

	public int getProductId() {
		return productId;
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

	public String getProductCategory() {
		return productCategory;
	}
	
}
