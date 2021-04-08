package kr.co.starrysky.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.co.starrysky.beans.PayBean;


//쿼리문을 작성하는 인터페이스
public interface PayMapper {

	
	
	@Insert("insert into pay_table (pay_id,pay_date,pay_method,pay_company,pay_number,pay_amount,pay_sum,product_name) values(#{pay_id},#{pay_date},#{pay_method},#{pay_company},#{pay_number},#{pay_amount},#{pay_sum},#{product_name})")
	void insert_into(PayBean databean);
	
	//=======================================
	
	@Select("select * from pay_table" )
	List<PayBean> select_data();



	// 결제내역 전부 불러오는 쿼리문
		@Select("select * from pay_table order by pay_date desc")
		List<PayBean> getPayAll();


        //결제내역 불러오는 쿼리문
      	//아이디로 확인
      	//select * from 계정테이블, 결제 테이블 where 계정테이블 아이디=건의사항테이블 아이디=#{아이디}
           @Select("select * from pay_table "+
    		   "where pay_id=#{pay_id} "+
    		   "order by pay_date desc")
          List<PayBean> getCardList(String id);
    	
       

}
