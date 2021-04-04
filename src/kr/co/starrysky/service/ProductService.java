package kr.co.starrysky.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.ProductTypeBean;
import kr.co.starrysky.dao.ProductDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class ProductService {

	@Value("${path.product_thumbnail}")
	private String path_thumbnail;
	
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
