package kr.co.starrysky.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.starrysky.beans.ProductBean;

public interface ProductMapper {

	@Select("select product_name, product_category_id, product_id, product_price, product_sale_price, product_quantity, product_thumbnaild, product_details "
			+ "from product_list where product_id = #{product_id}")
	List<ProductBean> getProductInfo(int product_id);
	
	
}
