package kr.co.starrysky.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.ProductTypeBean;
import kr.co.starrysky.mapper.ProductMapper;

@Repository
public class ProductDao {

	@Autowired
	ProductMapper productMapper;
	
	public List<ProductTypeBean> getProductType(){
		return productMapper.getProductType();
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
	
}
