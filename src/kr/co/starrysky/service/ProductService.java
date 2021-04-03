package kr.co.starrysky.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.ProductTypeBean;
import kr.co.starrysky.dao.ProductDao;

@Service
public class ProductService {

	@Autowired
	private ProductDao productDao;
	
	public List<ProductTypeBean> getProductType(){
		return productDao.getProductType();
	}
	
	public List<ProductBean> getProductList(String product_category_id){
		return productDao.getProductList(product_category_id);
	}
	
	public List<ProductBean> getSaleProductList(String product_category_id){
		return productDao.getSaleProductList(product_category_id);
	}
	public List<ProductBean> getSaleAllProductList(){
		return productDao.getSaleAllProductList();
	}
}
