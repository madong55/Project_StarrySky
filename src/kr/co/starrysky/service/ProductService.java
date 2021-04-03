package kr.co.starrysky.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.dao.ProductDao;

@Service
public class ProductService {

	@Autowired
	private ProductDao productDao;
	
	public List<ProductBean> getProductList(){
		return productDao.getProductList();
	}
	
	public List<ProductBean> getSaleProductList(){
		return productDao.getSaleProductList();
	}
}
