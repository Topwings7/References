package controller;

public class Cart {
	private String productId;
	private String productName;
	private int price;
	
	public Cart() {
		super();
	}
	public Cart(String productId, String productName, int price) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Cart [productId=" + productId + ", productName=" + productName + ", price=" + price + "]";
	}
	
}
