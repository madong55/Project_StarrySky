package kr.co.starrysky.beans;

public class ShoppingCartBean {

	private int cart_idx;
	private String user_email;
	private String product_name;
	private Integer product_temp_quantity;
	private int product_price;
	private int product_sale_price;
	private String product_thumbnail;
	
	public int getCart_idx() {
		return cart_idx;
	}
	public void setCart_idx(int cart_idx) {
		this.cart_idx = cart_idx;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public Integer getProduct_temp_quantity() {
		return product_temp_quantity;
	}
	public void setProduct_temp_quantity(Integer product_temp_quantity) {
		this.product_temp_quantity = product_temp_quantity;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getProduct_sale_price() {
		return product_sale_price;
	}
	public void setProduct_sale_price(int product_sale_price) {
		this.product_sale_price = product_sale_price;
	}
	public String getProduct_thumbnail() {
		return product_thumbnail;
	}
	public void setProduct_thumbnail(String product_thumbnail) {
		this.product_thumbnail = product_thumbnail;
	}
	
	
}
