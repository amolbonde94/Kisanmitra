package com.kisanmitra.dto;

public class CurrentStock {

	private String firstName;
	private String lastName;
	private String phone;
	private int quantity;
	private int price;
	private int productId;
	private String productName;
	private String farmerUserId;
	private String customerUserId;
	private int customerQuantity;
	
	
	public int getCustomerQuantity() {
		return customerQuantity;
	}

	public void setCustomerQuantity(int customerQuantity) {
		this.customerQuantity = customerQuantity;
	}

	public CurrentStock() {
		super();
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getFarmerUserId() {
		return farmerUserId;
	}

	public void setFarmerUserId(String farmerUserId) {
		this.farmerUserId = farmerUserId;
	}

	public String getCustomerUserId() {
		return customerUserId;
	}

	public void setCustomerUserId(String customerUserId) {
		this.customerUserId = customerUserId;
	}
	
}
