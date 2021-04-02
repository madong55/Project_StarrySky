package kr.co.starrysky.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.starrysky.beans.ProductBean;

public interface ProductMapper {

	//상품 상세페이지
	@Select("select product_name, product_category_id, product_id, product_price, product_sale_price, product_quantity, product_thumbnail, product_details "
			+ "from product_list where product_id = #{product_id}")
	ProductBean getProductInfo(int product_id);
	
	//상품 전체페이지(메인)
	@Select("select product_name, product_id, product_price, product_sale_price, product_thumbnail "
			+ "from product_list where product_sale_price is null")
	List<ProductBean> getProductList();
	
	//세일상품 페이지(메인)
	@Select("select product_name, product_id, product_price, product_sale_price, product_thumbnail "
			+ "from product_list where product_sale_price is not null;")
	List<ProductBean> getSaleProductList();
}
