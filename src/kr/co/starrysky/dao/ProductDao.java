package kr.co.starrysky.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.ProductTypeBean;
import kr.co.starrysky.beans.ShoppingCartBean;
import kr.co.starrysky.mapper.ProductMapper;

@Repository
public class ProductDao {
	
	@Autowired
	ProductMapper productMapper;
	
	public List<ProductTypeBean> getProductType(){
		return productMapper.getProductType();
	}
	
	public void insertProductBean(ProductBean insertProductBean) {
		productMapper.insertProductBean(insertProductBean);
	}
	
	public List<ProductBean> getProductList(String product_category_id){
		return productMapper.getProductList(product_category_id);
	}
	
	public List<ProductBean> getSaleProductList(String product_category_id){
		return productMapper.getSaleProductList(product_category_id);
	}
	
	public List<ProductBean> getSaleAllProductList(){
		return productMapper.getSaleAllProductList();
	}
	
	public ProductBean getProductInfo(String product_id) {
		return productMapper.getProductInfo(product_id);
	}
	
	public void insertShoppingCartInfo(String user_email, String product_id, int product_temp_quantity) {
		productMapper.insertShoppingCartInfo(user_email, product_id, product_temp_quantity);
	}
	
	public void plusTempQuantity(String user_email, String product_id, int product_temp_quantity) {
		productMapper.plusTempQuantity(user_email, product_id, product_temp_quantity);
	}
	
	public Integer checkShoppingCartInfo(String user_email, String product_id) {
		
		return productMapper.checkShoppingCartInfo(user_email, product_id);
	}
	
	public List<ShoppingCartBean> getShoppingCartInfo(String user_email){
		return productMapper.getShoppingCartInfo(user_email);
	}
}
