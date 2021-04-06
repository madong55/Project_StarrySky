package kr.co.starrysky.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.ProductTypeBean;
import kr.co.starrysky.beans.ShoppingCartBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.dao.ProductDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class ProductService {

	@Value("${path.product_thumbnail}")
	private String path_thumbnail;
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	@Autowired
	private ProductDao productDao;
	
	public List<ProductTypeBean> getProductType(){
		return productDao.getProductType();
	}
	
	private String saveUploadFile(MultipartFile file_name) {
		//현재시간과 오리지널 파일네임
		String product_thumbnail = System.currentTimeMillis() + "_" + file_name.getName();
		
		//경로오류 솔루션
		/*
		 * String file_name = System.currentTimeMillis() + "_" +
		 * FilenameUtils.getBaseName(upload_file.getOriginalFilename()) + "." +
		 * FilenameUtils.getExtension(upload_file.getOriginalFilename());
		 */
		try {
			file_name.transferTo(new File(path_thumbnail + "/" + product_thumbnail));
			System.out.println("저장된경로/파일이름:"+ path_thumbnail + "/" + product_thumbnail);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return product_thumbnail;
	}
	
	public void insertProductBean(ProductBean insertProductBean) {
		
		MultipartFile file_name = insertProductBean.getFile_name();
		
		if(file_name.getSize()>0) {
			String product_thumbnail = saveUploadFile(file_name);
			System.out.println(product_thumbnail);
			
			insertProductBean.setProduct_thumbnail(product_thumbnail);

			productDao.insertProductBean(insertProductBean);
		}
		
	}
	
	public List<ProductBean> getProductListByCategory(String product_category_id){
		return productDao.getProductListByCategory(product_category_id);
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
	
	public List<ProductBean> getAllProductList(){
		return productDao.getAllProductList();
	}
	
	public ProductBean getProductInfo(String product_id) {
		return productDao.getProductInfo(product_id);
	}
	
	public void insertInfoOrPlusQuantity(String user_email, String product_id, int product_temp_quantity) {
		
		//장바구니에서 수량 받아옴, 없으면 null
		Integer checkQuantity = productDao.checkShoppingCartInfo(user_email, product_id);
		
		//수량값이 null이면 전체추가, null아니면 수량만큼 증가
		if(checkQuantity==null) {
			productDao.insertShoppingCartInfo(user_email, product_id, product_temp_quantity);	
		}else {
			productDao.plusTempQuantity(user_email, product_id, product_temp_quantity);	
		}
	}
	
	public List<ShoppingCartBean> getShoppingCartInfo(String user_email){
		return productDao.getShoppingCartInfo(user_email);
	}
	
	public void addCart(String product_id) {
		
		String user_email = loginUserBean.getUser_email();
		
		Integer checkQuantity = productDao.checkShoppingCartInfo(user_email, product_id);
		
		if(checkQuantity==null) {
			productDao.insertShoppingCartInfo(user_email, product_id, 1);	
		}else {
			productDao.plusTempQuantity(user_email, product_id, 1);	
		}
		
	}
	
	//장바구니수량정보 갱신
	public void updateAllTempQuantity(String user_email, String product_id, int product_temp_quantity) {
		productDao.updateAllTempQuantity(user_email, product_id, product_temp_quantity);
	}
	// 장바구니삭제(하나만)
	public void deleteShoppingCartInfo(String user_email,String product_id) {
		productDao.deleteShoppingCartInfo(user_email, product_id);
	}
	// 모든 장바구니삭제
	public void deleteAllShoppingCartInfo(String user_email) {
		productDao.deleteAllShoppingCartInfo(user_email);
	}
}
