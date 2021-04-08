/*
 * package kr.co.starrysky.mapper;
 * 
 * import org.apache.ibatis.annotations.Insert; import
 * org.apache.ibatis.annotations.Select;
 * 
 * import kr.co.starrysky.beans.UserBean;
 * 
 * public interface OrderMapper {
 * 
 * //장바구니관련메모 //shoppingcart controller추가? puroduct controller에서 같이사용? //장바구니정보도
 * db에 추가해야함 (My)TempShoppingListBean email(pk,fk), product_name(fk),
 * product_temp_quantity, product_price(fk), product_sale_price(fk) //장바구니에서
 * 수량바꾸면 총가격 실시간변경 ajax이용, db에도 실시간반영(보류) //db갱신타이밍 //(1.샵메인장바구니아이콘)from index ,
 * 수량은 무조건 1개로 갱신, alert설정, //(2.제품상세페이지장바구니넣기버튼)from product_details //(3.쇼핑 더
 * 하기,4.updatecart,5.proceed to checkout)from shopping_cart //1,2의 경우 같은상품이 이미
 * 장바구니db에 존재하면 alert 이미등록된상품입니다 //db갱신메소드 두종류필요 //로그인시 db에서 불러와서 장바구니정보 바로세팅
 * root에 추가해서 사용해야함 //장바구니 구매최대수량설정? 재고정보 불러와서?(보류)
 * 
 * //주문하기 버튼 클릭시 orders, order_detail테이블에 insert //주문성공시 장바구니정보 초기화후 샾메인페이지로 리턴,
 * 주문 실패시 장바구니정보 유지후 결제페이지로 다시 리턴
 * 
 * @Insert("insert into ") void addOrderInfo(UserBean purchaseUserBean)
 * 
 * //결제내역 보기누르면 작동
 * 
 * @Select OrderBean getOrderInfo(UserBean purchaseUserBean)
 * 
 * }
 */