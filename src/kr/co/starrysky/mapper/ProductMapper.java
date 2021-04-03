package kr.co.starrysky.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.ProductTypeBean;

public interface ProductMapper {

	//상품 타입
	@Select("select product_category_id, product_category "
			+ "from product_type "
			+ "order by product_category_id")
	List<ProductTypeBean> getProductType();
	
	//상품 상세페이지
	@Select("select product_name, product_category_id, product_id, product_price, product_sale_price, product_quantity, product_thumbnail, product_details "
			+ "from product_list where product_id = #{product_id}")
	ProductBean getProductInfo(int product_id);
	
	//상품 전체페이지(카테고리별)
	@Select("select product_name, product_id, product_price, product_sale_price, product_thumbnail "
			+ "from product_list where product_sale_price is null and product_category_id = #{product_category_id}")//and product_category_id = #{product_category_id} 
	List<ProductBean> getProductList(String product_category_id);//String product_category_id
	
	//세일상품 페이지(카테고리별)
	@Select("select product_name, product_id, product_price, product_sale_price, product_thumbnail "
			+ "from product_list where product_sale_price is not null and product_category_id = #{product_category_id}")
	List<ProductBean> getSaleProductList(String product_category_id);

	//세일상품 페이지(전체)
	@Select("select product_name, product_id, product_price, product_sale_price, product_thumbnail "
			+ "from product_list where product_sale_price is not null")
	List<ProductBean> getSaleAllProductList();
}
