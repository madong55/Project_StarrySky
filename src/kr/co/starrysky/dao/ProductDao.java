package kr.co.starrysky.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.mapper.ProductMapper;

@Repository
public class ProductDao {

	@Autowired
	ProductMapper productMapper;
	
	public List<ProductBean> getProductList(){
		return productMapper.getProductList();
	}
	
	public List<ProductBean> getSaleProductList(){
		return productMapper.getSaleProductList();
	}
	
}
