package kr.co.starrysky.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.starrysky.beans.UserBean;

public class TopMenuInterceptor implements HandlerInterceptor{

	private UserBean loginUserBean;
	
	public TopMenuInterceptor(UserBean loginUserBean) {
		this.loginUserBean = loginUserBean;
		
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		/*
		 * this.loginUserBean.setLatestPage(request.getContextPath());
		 * System.out.println("PathInfo : "+request.getPathInfo());
		 * System.out.println("-----");
		 * System.out.println("RequestURI : "+request.getRequestURI());
		 * System.out.println("-----");
		 * System.out.println("ServletPath : "+request.getServletPath());
		 */
		request.setAttribute("loginUserBean", loginUserBean);
		
		
		return true;
	}
}
