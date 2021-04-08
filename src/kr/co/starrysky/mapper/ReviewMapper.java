package kr.co.starrysky.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import kr.co.starrysky.beans.Location2Bean;
import kr.co.starrysky.beans.ReviewBean;

public  interface ReviewMapper {
	
	@SelectKey(statement = "select review_seq.nextval from dual", keyProperty = "review_num", before = true, resultType = int.class)
	
	//--------------------------------------------------------------------------------------------------------------------
	// 리뷰 쓰는 메소드
	@Insert("insert into review_board_table(review_num, location2_id, location1_id, location2_name, user_nickname, user_email, review_score, " +
			"review_date, review_subject, review_contents, review_image, recommnd_product) " +
			"values(#{review_num}, #{location2_id}, #{location1_id}, #{location2_name}, #{user_nickname}, #{user_email}, #{review_score}, " +
			"sysdate, #{review_subject}, #{review_contents}, #{review_image,jdbcType=VARCHAR}, #{recommnd_product})")
	void addReview(ReviewBean writeReviewBean);
	
	/*@Insert("insert into review_board_table(review_num, location2_id, location1_id, location2_name, user_nickname, user_email, review_score, " +
			"review_date, review_subject, review_contents, review_image, recommnd_product) " +
			"values(review_seq.nextval, #{location2_id}, #{location1_id}, #{location2_name}, #{user_nickname}, #{user_email}, #{review_score}, " +
			"sysdate, #{review_subject}, #{review_contents}, #{review_image,jdbcType=VARCHAR}, #{recommnd_product})")
	void addReview(ReviewBean writeReviewBean);*/
	
	// -> 지역별 게시판 안에 들어와서의 글 목록 방법
	// 글 번호 순서대로 글 목록 읽어오는 메소드(기본)
	@Select("select * " +
			"from review_board_table " + 
			"order by review_num desc")
	List<ReviewBean> getReviewList(RowBounds rowBounds);
	
	// 별점으로 글 목록 출력하는 메소드
	@Select("select * " + 
			"from review_board_table " + 
			"order by review_score desc") 
	List<ReviewBean> getReviewList_star(RowBounds rowBounds);
	
	@Select("select location1_id, location2_id, location2_name from location2 where not(location2_id=0)")
	List<Location2Bean> getLocation2List();
	
	// 모든 리뷰 리스트 가지고 오는 메소드
	@Select("select * from review_board_table")
	List<ReviewBean>getAllReviewList();
	
	//--------------------------------------------------------------------------------------------------------------------

	// 리뷰 읽어오는 메소드
	@Select("select * " +
			"from review_board_table" +
			" where review_num=#{review_num} and location2_id=#{location2_id} and location1_id=#{location1_id}")
	ReviewBean getReviewInfo(@Param("review_num") int review_num, @Param("location2_id") int location2_id, @Param("location1_id") int location1_id);
	
	
	// 리뷰 수정하는 메소드
	@Update("update review_board_table " +
			"set location2_name=#{location2_name}, review_score=#{review_score}, review_subject=#{review_subject}, review_contents=#{review_contents}, " +
			"review_image=#{review_image,jdbcType=VARCHAR}, recommnd_product=#{recommnd_product} " + 
			"where review_num=#{review_num} and location2_id=#{location2_id} and location1_id=#{location1_id}")
	void modifyReviewInfo(ReviewBean modifyReviewBean);
	
	// 리뷰 삭제하는 메소드
	@Delete("delete from review_board_table where review_num = #{review_num}")
	void deleteReviewInfo(int review_num);

	// 페이징 처리해주는 메소드
	@Select("select count(*) from review_board_table")
	int getReviewCnt();
	
	
}
