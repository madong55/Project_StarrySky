package kr.co.starrysky.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.starrysky.beans.UserBean;

public class CheckLoginInterceptor implements HandlerInterceptor{

	//로그인 여부를 판단해야하므로 loginUserBean객체 주입
	private UserBean loginUserBean;
	
	//AutoWire가 안되므로 생성자를 활용한다
	public CheckLoginInterceptor(UserBean loginUserBean) {
		this.loginUserBean=loginUserBean;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 로그인이 되어 있지 않으면
		if(loginUserBean.isUserLogin()==false) {
			//로그인전 경로를 받아옴
			String contextPath = request.getContextPath();
			//로그인처리가 안되어 있으면 not_login으로 페이지 전환
			response.sendRedirect(contextPath + "/user/not_login");
			//다음단계로 이동하지 않음
			return false;
		}
		//로그인이 되어 있으면
		return true;
	}
	
}
