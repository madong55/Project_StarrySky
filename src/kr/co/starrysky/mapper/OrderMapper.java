package kr.co.starrysky.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.co.starrysky.beans.UserBean;

public interface OrderMapper {

	/*
	 * //주문하기 버튼 클릭시 orders, order_detail테이블에 insert
	 * 
	 * @Insert("insert into ") void addOrderInfo(UserBean purchaseUserBean)
	 * 
	 * //결제내역 보기누르면 작동
	 * 
	 * @Select OrderBean getOrderInfo(UserBean purchaseUserBean)
	 */
}
