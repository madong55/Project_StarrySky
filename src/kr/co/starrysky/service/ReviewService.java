package kr.co.starrysky.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.starrysky.beans.Location2Bean;
import kr.co.starrysky.beans.ReviewBean;
import kr.co.starrysky.beans.ReviewPageBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.dao.ReviewDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class ReviewService {
	
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
	
	public List<ReviewBean>getAllReviewList() {
		
		return reviewDao.getAllReviewList();
	}
	

	// --------------------------------------------------------------------------------------------------------------------

	public ReviewPageBean getReviewCnt(int currentPage) {

		int content_cnt = reviewDao.getReviewCnt();

		ReviewPageBean reviewPageBean = new ReviewPageBean(content_cnt, currentPage, page_listcnt, page_paginationcnt);

		return reviewPageBean;

	}
	
	public void addReview(ReviewBean writeReviewBean) {
		

		MultipartFile review_file = writeReviewBean.getReview_file(); // Raw File의 정보를 ContentBean에 가서 물어온다.

		// 첨부파일이 있으면(0아니면) 저장해라.
		if (review_file.getSize() > 0) {

			// 업로드한 Rawfile길이가 0 이 아니면, 위의 saveUploadFile메서드 돌려서, 중복을 제거한 file_name에 저장한다.
			String review_image = saveUploadFile(review_file);

			// 첨부파일 호출. DB에 집어넣을때, 위에서 가공한 String 파일 이름을 세팅해서 집어넣음.
			writeReviewBean.setReview_image(review_image);

		}
		// 이제 저장할건데, 세션으로부터 로그인정보를 가져와서, 누가 썼는지 인덱스번호(가입할때마다 시퀀스번호생성되는것) 가져와서 세팅한다.
		// 어느 유저가 글인지를 확인해서, 맞으면 수정/삭제시키려한다. 계속 끌고다녀야함.
		writeReviewBean.setUser_nickname(loginUserBean.getUser_nickname());
		
		reviewDao.addReview(writeReviewBean);
		
	}
	
	public ReviewBean getReviewInfo(int review_num, int location2_id, int location1_id) {
		
		return reviewDao.getReviewInfo(review_num, location2_id, location1_id);
		
	}
	
	public void modifyReviewInfo(ReviewBean modifyReviewInfo) {
		
		reviewDao.modifyReviewInfo(modifyReviewInfo);
		
	}
	
	public void deleteReviewInfo(int review_num) {
		
		reviewDao.deleteReviewInfo(review_num);
		
	}
	
	private String saveUploadFile(MultipartFile review_file) { // input 받은 파일을 내가 설정한 경로에 저장하고 파일 이름을 만들어서 변수방에 저장하고 디비에 리턴해주는
	      //현재시간과 오리지널 파일네임
	      String review_image = System.currentTimeMillis() + "_" + review_file.getName();
	      
	      
	      //경로 오류 솔루션
	      /*
	       * String file_name = System.currentTimeMillis() + "_" +
	       * FilenameUtils.getBaseName(upload_file.getOriginalFilename()) + "." +
	       * FilenameUtils.getExtension(upload_file.getOriginalFilename());
	       */
	      try {
	    	  review_file.transferTo(new File(path_reviewupload + "/" + review_image));
	         //System.out.println("저장된경로/파일이름:"+ path_thumbnail + "/" + product_thumbnail);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      return review_image;
	   }
	
}
