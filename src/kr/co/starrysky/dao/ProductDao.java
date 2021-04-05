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
	
	public List<ProductBean> getProductListByCategory(String product_category_id){
		return productMapper.getProductListByCategory(product_category_id);
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
	
	public List<ProductBean> getAllProductList(){
		return productMapper.getAllProductList();
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
	
	//장바구니수량정보 갱신
	public void updateAllTempQuantity(String user_email, String product_id, int product_temp_quantity) {
		productMapper.updateAllTempQuantity(user_email, product_id, product_temp_quantity);
	}
	// 장바구니삭제(하나만)
	public void deleteShoppingCartInfo(String user_email,String product_id) {
		productMapper.deleteShoppingCartInfo(user_email, product_id);
	}
	// 모든 장바구니삭제
	public void deleteAllShoppingCartInfo(String user_email) {
		productMapper.deleteAllShoppingCartInfo(user_email);
	}
}
