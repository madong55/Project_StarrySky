package kr.co.starrysky.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.starrysky.beans.ReviewBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.service.ReviewService;

public class CheckReviewWriterInterceptor implements HandlerInterceptor{

	private UserBean loginUserBean;
	private ReviewService reviewService;
	
	public CheckReviewWriterInterceptor(UserBean loginUserBean, ReviewService reviewService) {
		
		this.loginUserBean = loginUserBean;
		this.reviewService = reviewService;
	}
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
           		    
				String str1 = request.getParameter("review_num");
				String str2 = request.getParameter("location2_id");
				String str3 = request.getParameter("location1_id");
				int review_num1 = Integer.parseInt(str1);
				int review_num2 = Integer.parseInt(str2);
				int review_num3 = Integer.parseInt(str3);
	
			  	ReviewBean currentContentBean = reviewService.getReviewInfo(review_num1, review_num2, review_num3);
			  	
				if(!currentContentBean.getUser_email().equals(loginUserBean.getUser_email())) {
					
					String contextPath=request.getContextPath();
					
					response.sendRedirect(contextPath+"/shop/board/not_write");
					
					return false;
					
				}
		
		return true;
	}

}
