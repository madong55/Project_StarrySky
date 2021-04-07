package kr.co.starrysky.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.starrysky.beans.Location2Bean;
import kr.co.starrysky.beans.ReviewBean;
import kr.co.starrysky.mapper.ReviewMapper;

@Repository
public class ReviewDao {

	@Autowired
	private ReviewMapper reviewMapper;
	
	
	//--------------------------------------------------------------------------------------------------------------------

	public List<ReviewBean> getReviewList(RowBounds rowBounds) {

		return reviewMapper.getReviewList(rowBounds);
	}
	
	public List<ReviewBean> getReviewList_star(RowBounds rowBounds) {
		
		return reviewMapper.getReviewList_star(rowBounds);
		
	}
	
	public List<Location2Bean> getLocation2List() {
		
		return reviewMapper.getLocation2List();
		
	}
	
	//--------------------------------------------------------------------------------------------------------------------

	
	
	public void addReview(ReviewBean writeReviewBean) {
		
		reviewMapper.addReview(writeReviewBean);
		
	}
	
	public ReviewBean getReviewInfo(int review_num, int location2_id, int location1_id) {
		
		return reviewMapper.getReviewInfo(review_num, location2_id, location1_id);
		
	}
	
	public void modifyReviewInfo(ReviewBean modifyReviewInfo) {
		
		reviewMapper.modifyReviewInfo(modifyReviewInfo);
		
	}
	
	public void deleteReviewInfo(int review_num, int location2_id, int location1_id) {
		
		reviewMapper.deleteReviewInfo(review_num, location2_id, location1_id);
		
	}
	
	public int getReviewCnt() {
		
		return reviewMapper.getReviewCnt();
		
	}
	
	
}
