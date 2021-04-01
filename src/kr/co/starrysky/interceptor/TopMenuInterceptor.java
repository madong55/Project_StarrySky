package kr.co.starrysky.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.starrysky.beans.PresentPageCheckBean;
import kr.co.starrysky.beans.UserBean;

public class TopMenuInterceptor implements HandlerInterceptor{

	private UserBean loginUserBean;
	private PresentPageCheckBean presentPageCheckBean;
	
	public TopMenuInterceptor(UserBean loginUserBean, PresentPageCheckBean presentPageCheckBean) {
		this.loginUserBean = loginUserBean;
		this.presentPageCheckBean = presentPageCheckBean;
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
		request.setAttribute("PresentPageCheckBean", presentPageCheckBean);
		
		return true;
	}
}
