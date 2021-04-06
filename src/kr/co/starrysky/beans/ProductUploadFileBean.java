package kr.co.starrysky.beans;

import org.springframework.web.multipart.MultipartFile;

public class ProductUploadFileBean {

	MultipartFile file_name;
	String product_thumbnail;
	
	public MultipartFile getFile_name() {
		return file_name;
	}
	public void setFile_name(MultipartFile file_name) {
		this.file_name = file_name;
	}
	public String getProduct_thumbnail() {
		return product_thumbnail;
	}
	public void setProduct_thumbnail(String product_thumbnail) {
		this.product_thumbnail = product_thumbnail;
	}
	
	
}
