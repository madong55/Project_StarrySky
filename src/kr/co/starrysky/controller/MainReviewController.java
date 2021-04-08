package kr.co.starrysky.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.starrysky.beans.ReviewBean;
import kr.co.starrysky.service.ReviewService;

@Controller
public class MainReviewController {

	@Autowired
	private ReviewService reviewService;
	
	@GetMapping("/main_review")
	public String main_review(Model model) {
		
		List<ReviewBean> tempMainReviewBean = reviewService.getTempMainReviewInfo();
		model.addAttribute("tempMainReviewBean", tempMainReviewBean);
		
		return "include/main_review";
	}
}
