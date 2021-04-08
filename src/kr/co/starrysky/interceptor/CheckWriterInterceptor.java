package kr.co.starrysky.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.starrysky.beans.QnAContentBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.service.QnABoardService;

public class CheckWriterInterceptor implements HandlerInterceptor{

	private UserBean loginUserBean;
	private QnABoardService qnaBoardService;
	
	public CheckWriterInterceptor(UserBean loginUserBean, QnABoardService qnaBoardService) {
		
		this.loginUserBean = loginUserBean;
		this.qnaBoardService = qnaBoardService;
	}
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
           		    
				String str1 = request.getParameter("qna_num");
				int qna_num = Integer.parseInt(str1);
	
			  	QnAContentBean currentContentBean = qnaBoardService.getQnAContentInfo(qna_num);
			  	
				if(!currentContentBean.getUser_email().equals(loginUserBean.getUser_email())) {
					
					String contextPath=request.getContextPath();
					
					response.sendRedirect(contextPath+"/shop/board/not_write");
					
					return false;
					
				}
		
		return true;
	}

}
