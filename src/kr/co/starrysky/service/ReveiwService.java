package kr.co.starrysky.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import kr.co.starrysky.beans.Location2Bean;
import kr.co.starrysky.beans.ReviewBean;
import kr.co.starrysky.beans.ReviewPageBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.dao.ReviewDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class ReveiwService {
	
	@Value("${path.reviewupload}")
	private String path_reviewupload;

	@Autowired
	private ReviewDao reviewDao;

	// -------------페이징--------------------------
	@Value("${page.listcnt}")
	private int page_listcnt;

	@Value("${page.paginationcnt}")
	private int page_paginationcnt;
	// -------------------------------------------

	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	
	//--------------------------------------------------------------------------------------------------------------------
	
	public List<ReviewBean> getReviewList(int page) {
		
		int start = (page - 1) * page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);

		return reviewDao.getReviewList(rowBounds);
	}
	
	public List<ReviewBean> getReviewList_star(int page) {
		
		int start = (page - 1) * page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		
		return reviewDao.getReviewList_star(rowBounds);
		
	}
	
	public List<Location2Bean> getLocation2List() {
		
		return reviewDao.getLocation2List();
		
	}
	

	// --------------------------------------------------------------------------------------------------------------------

	public ReviewPageBean getReviewCnt(int currentPage) {

		int content_cnt = reviewDao.getReviewCnt();

		ReviewPageBean reviewPageBean = new ReviewPageBean(content_cnt, currentPage, page_listcnt, page_paginationcnt);

		return reviewPageBean;

	}
	
	public void addReview(ReviewBean writeReviewBean) {
		
		reviewDao.addReview(writeReviewBean);
		
	}
	
	public ReviewBean getReviewInfo(int review_num, int location2_id, int location1_id) {
		
		return reviewDao.getReviewInfo(review_num, location2_id, location1_id);
		
	}
	
	public void modifyReviewInfo(ReviewBean modifyReviewInfo) {
		
		reviewDao.modifyReviewInfo(modifyReviewInfo);
		
	}
	
	public void deleteReviewInfo(int review_num, int location2_id, int location1_id) {
		
		reviewDao.deleteReviewInfo(review_num, location2_id, location1_id);
		
	}
	
	
}
