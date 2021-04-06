package kr.co.starrysky.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.ProductTypeBean;
import kr.co.starrysky.beans.ShoppingCartBean;

public interface ProductMapper {

	//상품 타입
	@Select("select product_category_id, product_category "
			+ "from product_type "
			+ "order by product_category_id")
	List<ProductTypeBean> getProductType();
	
	//상품정보 입력
	@Insert("insert into product_list(product_name, product_category_id, product_id, product_price, product_sale_price, product_quantity, product_thumbnail, product_thumbnail2, product_thumbnail3, product_thumbnail4, product_thumbnail5, product_details, product_details2)"
			+ " values (#{product_name}, #{product_category_id}, #{product_id}, #{product_price}, #{product_sale_price}, #{product_quantity}, #{product_thumbnail,jdbcType=VARCHAR}, #{product_thumbnail2,jdbcType=VARCHAR}, #{product_thumbnail3,jdbcType=VARCHAR}, #{product_thumbnail4,jdbcType=VARCHAR}, #{product_thumbnail5,jdbcType=VARCHAR}, #{product_details}, #{product_details2})")
	void insertProductBean(ProductBean insertProductBean);
	
	//전체상품페이지(카테고리별)
	@Select("select product_name, product_category_id, product_id, product_price, product_sale_price, product_quantity, product_thumbnail, product_details, product_thumbnail2, product_thumbnail3, product_thumbnail4, product_thumbnail5, product_details, product_details2 "
			+ "from product_list where product_category_id = #{product_category_id}")
	List<ProductBean> getProductListByCategory(String product_category_id);
		
	//상품페이지(카테고리별)
	@Select("select product_name, product_category_id, product_id, product_price, product_sale_price, product_quantity, product_thumbnail, product_details, product_thumbnail2, product_thumbnail3, product_thumbnail4, product_thumbnail5, product_details, product_details2 "
			+ "from product_list where product_sale_price is null and product_category_id = #{product_category_id}")
	List<ProductBean> getProductList(String product_category_id);
	
	//세일상품 페이지(카테고리별)
	@Select("select product_name, product_category_id, product_id, product_price, product_sale_price, product_quantity, product_thumbnail, product_details, product_thumbnail2, product_thumbnail3, product_thumbnail4, product_thumbnail5, product_details, product_details2 "
			+ "from product_list where product_sale_price is not null and product_category_id = #{product_category_id}")
	List<ProductBean> getSaleProductList(String product_category_id);

	//세일상품 페이지(전체)
	@Select("select product_name, product_category_id, product_id, product_price, product_sale_price, product_quantity, product_thumbnail, product_details, product_thumbnail2, product_thumbnail3, product_thumbnail4, product_thumbnail5, product_details, product_details2 "
			+ "from product_list where product_sale_price is not null")
	List<ProductBean> getSaleAllProductList();
	
	@Select("select product_name, product_category_id, product_id, product_price, product_sale_price, product_quantity, product_thumbnail, product_details, product_thumbnail2, product_thumbnail3, product_thumbnail4, product_thumbnail5, product_details, product_details2 "
			+ "from product_list")
	List<ProductBean> getAllProductList();
	
	/////////////////////
	
	//상품 상세페이지
	@Select("select product_name, product_category_id, product_id, product_price, product_sale_price, product_quantity, product_thumbnail, product_details "
			+ "from product_list where product_id = #{product_id}")
	ProductBean getProductInfo(String product_id);
	
	//장바구니에 들어있는지 체크
	@Select("SELECT PRODUCT_TEMP_QUANTITY FROM SHOPPING_CART WHERE USER_EMAIL = #{user_email} AND PRODUCT_ID = #{product_id}")
	Integer checkShoppingCartInfo(@Param("user_email")String user_email, @Param("product_id")String product_id);
	
	//장바구니정보삽입
	@Insert("INSERT INTO SHOPPING_CART(CART_IDX, USER_EMAIL, PRODUCT_ID, PRODUCT_TEMP_QUANTITY) "
			+ " VALUES (CART_SEQ.NEXTVAL, #{user_email}, #{product_id}, #{product_temp_quantity})")
	void insertShoppingCartInfo(@Param("user_email")String user_email, @Param("product_id")String product_id, @Param("product_temp_quantity")int product_temp_quantity);
	
	//장바구니 구매수량 추가
	@Update("UPDATE SHOPPING_CART SET PRODUCT_TEMP_QUANTITY = PRODUCT_TEMP_QUANTITY + #{product_temp_quantity}"
			+ "WHERE USER_EMAIL = #{user_email} AND PRODUCT_ID = #{product_id}")
	void plusTempQuantity(@Param("user_email")String user_email, @Param("product_id")String product_id, @Param("product_temp_quantity")int product_temp_quantity);
	
	//로그인한 유저의 모든 장바구니정보 불러오기
	@Select("SELECT CART_IDX, U.USER_EMAIL, S.PRODUCT_ID, P.PRODUCT_NAME, P.PRODUCT_PRICE, P.PRODUCT_SALE_PRICE, P.PRODUCT_THUMBNAIL, S.PRODUCT_TEMP_QUANTITY "
			+ "FROM SHOPPING_CART S "
			+ "INNER JOIN USER_TABLE U ON S.USER_EMAIL = U.USER_EMAIL "
			+ "INNER JOIN PRODUCT_LIST P ON S.PRODUCT_ID = P.PRODUCT_ID "
			+ "WHERE U.USER_EMAIL = #{user_email}")
	List<ShoppingCartBean> getShoppingCartInfo(@Param("user_email")String user_email);
	
	//장바구니수량정보 갱신
	@Update("UPDATE SHOPPING_CART SET PRODUCT_TEMP_QUANTITY = #{product_temp_quantity}"
			+ "WHERE USER_EMAIL = #{user_email} AND PRODUCT_ID = #{product_id}")
	void updateAllTempQuantity(@Param("user_email") String user_email, @Param("product_id") String product_id, @Param("product_temp_quantity") int product_temp_quantity);

	// 장바구니삭제(하나만)
	@Delete("delete from shopping_cart where user_email = #{user_email} and product_id = #{product_id}")
	void deleteShoppingCartInfo(@Param("user_email") String user_email, @Param("product_id") String product_id);

	// 모든 장바구니삭제
	@Delete("delete from shopping_cart where user_email = #{user_email}")
	void deleteAllShoppingCartInfo(@Param("user_email") String user_email);
	
}
