package kr.co.starrysky.controller;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.starrysky.beans.Location2Bean;
import kr.co.starrysky.beans.ReviewBean;
import kr.co.starrysky.beans.ReviewPageBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.service.LocationService;
import kr.co.starrysky.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;

	@Autowired
	private LocationService locationService;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@GetMapping("/list")
	public String list(@ModelAttribute("reviewListBean") ReviewBean reviewListBean, 
					   @RequestParam(value = "page", defaultValue = "1") int page, Model model) {

		List<ReviewBean> reviewList = reviewService.getReviewList(page);
		model.addAttribute("reviewList", reviewList);
		
		ReviewPageBean reviewPageBean = reviewService.getReviewCnt(page);
		model.addAttribute("reviewPageBean", reviewPageBean);

		model.addAttribute("page", page);

		return "review/list";
	}
	
	@GetMapping("/list_star")
	public String list_star(@ModelAttribute("reviewListBean") ReviewBean reviewListBean,
							@RequestParam(value = "review_score", defaultValue = "0") int review_score,
							@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		
		// 별점 개수대로 오게
		List<ReviewBean> reviewList_star = reviewService.getReviewList_star(review_score);
		model.addAttribute("reviewList_star", reviewList_star);
		
		ReviewPageBean reviewPageBean = reviewService.getReviewCnt(page);
		model.addAttribute("reviewPageBean",reviewPageBean);
		
		model.addAttribute("page", page);

		return "review/list_star";
	}

	@GetMapping("/read")
	public String read(@RequestParam("review_num") int review_num, 
			   		   @RequestParam("location2_id") int location2_id, 
			   		   @RequestParam("location2_name") int location2_name,
			   		   @RequestParam("location1_id") int location1_id,
			   		   @RequestParam(value = "review_score", defaultValue = "0") int review_score,
			   		   Model model) {

		model.addAttribute("review_num", review_num);
		//model.addAttribute("location2_name", location2_name);
		///model.addAttribute("review_score", review_score);
		
		ReviewBean readReviewBean=reviewService.getReviewInfo(review_num, location2_id, location1_id);
		
		model.addAttribute("readReviewBean",readReviewBean);
		model.addAttribute("loginUserBean",loginUserBean);
		
		return "review/read";
		
	}
	
	@GetMapping("/write")
	public String write(@ModelAttribute("writeReviewBean") ReviewBean writeReviewBean, Model model) {
		
		writeReviewBean.setUser_nickname(loginUserBean.getUser_nickname());
		writeReviewBean.setUser_email(loginUserBean.getUser_email());
		
		// 지역명 리스트 가지고 오게
		List<Location2Bean> location2List = reviewService.getLocation2List();
		model.addAttribute("location2List", location2List);
		
		return "review/write";

	}
	
	@PostMapping("/write_pro")
	public String write_pro(@ModelAttribute("writeReviewBean") ReviewBean writeReviewBean, Model model) {
		
		Location2Bean l2b = locationService.expandLocationKey(String.valueOf(writeReviewBean.getLocation2_id()));
		writeReviewBean.setLocation1_id(l2b.getLocation1_id());
		writeReviewBean.setLocation2_name(l2b.getLocation2_name());
	
		reviewService.addReview(writeReviewBean);
		
		return "review/write_success";
		
	}
	
	@GetMapping("/modify")
	public String modify(@RequestParam("review_num") int review_num, @RequestParam(value = "review_score", defaultValue = "0") int review_score,
						 @RequestParam("location2_id") int location2_id, @RequestParam("location2_name") int location2_name,
						 @RequestParam("location1_id") int location1_id,
						 @ModelAttribute("modifyReviewBean") ReviewBean modifyReviewBean, Model model) {
		
		model.addAttribute("review_num", review_num);
		model.addAttribute("review_score", review_score);
		model.addAttribute("location2_id", location2_id);
		model.addAttribute("location2_name", location2_name);
		
		// 게시글 하나의 정보 가져오기
		ReviewBean tempReviewBean = reviewService.getReviewInfo(review_num,location2_id, location1_id);
		
		// form:form으로 받아서 모델로 넘겨줄 경우 get,set 필요 없음..?
		modifyReviewBean.setUser_nickname(tempReviewBean.getUser_nickname());
		
		// 지역명 리스트 가지고 오게
		List<Location2Bean> location2List = reviewService.getLocation2List();
		model.addAttribute("location2List", location2List);
		
		return "review/modify";
		
	}
	
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @RequestParam("review_num") int review_num, @RequestParam(value = "review_score", defaultValue = "0") int review_score,
							 @RequestParam("location2_id") int location2_id, @RequestParam("location2_name") int location2_name,
							 @ModelAttribute("modifyReviewBean") ReviewBean modifyReviewBean, BindingResult result, Model model) {
		
		model.addAttribute("review_num", review_num);
		model.addAttribute("review_score", review_score);
		model.addAttribute("location2_id", location2_id);
		model.addAttribute("location2_name", location2_name);
		
		if(result.hasErrors()) {
			
			return "review/modify";
			
		}
		
		reviewService.modifyReviewInfo(modifyReviewBean);

		return "review/modify_success";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("review_num") int review_num, @RequestParam("location2_id") int location2_id, 
						 @RequestParam("location1_id") int location1_id, Model model) {
		
		reviewService.deleteReviewInfo(review_num, location2_id, location1_id);
		
		return "review/delete";
		
	}

	@GetMapping("/not_write")
	public String not_write() {
		
		return "review/not_write";
		
	}
	
}

