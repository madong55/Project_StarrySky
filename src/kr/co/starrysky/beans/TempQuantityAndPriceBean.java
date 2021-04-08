package kr.co.starrysky.beans;

import java.util.List;

public class TempQuantityAndPriceBean {

	private String product_id;
	private int product_quantity;
	private List<TempQuantityAndPriceBean> tempCartAndTotalPriceBean;
	
	
	public List<TempQuantityAndPriceBean> getTempCartAndTotalPriceBean() {
		return tempCartAndTotalPriceBean;
	}
	public void setTempCartAndTotalPriceBean(List<TempQuantityAndPriceBean> tempCartAndTotalPriceBean) {
		this.tempCartAndTotalPriceBean = tempCartAndTotalPriceBean;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public int getProduct_quantity() {
		return product_quantity;
	}
	public void setProduct_quantity(int product_quantity) {
		this.product_quantity = product_quantity;
	}
}
