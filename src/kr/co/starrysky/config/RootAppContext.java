package kr.co.starrysky.config;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.ApplicationScope;
import org.springframework.web.context.annotation.SessionScope;

import kr.co.starrysky.beans.Location2Bean;
import kr.co.starrysky.beans.PresentPageCheckBean;
import kr.co.starrysky.beans.ShoppingCartBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.beans.WeatherBean;
import kr.co.starrysky.beans.WeatherKey;
import kr.co.starrysky.beans.WeatherStarBean;
import kr.co.starrysky.service.LocationService;
import kr.co.starrysky.service.WeatherService;

//프로젝트 작업시 사용할 bean을 정의하는 클래스
@Configuration
public class RootAppContext {
	
	@Bean("loginUserBean")
	@SessionScope
	public UserBean loginUserBean() {
		return new UserBean();
	}
	
	@Bean("presentPageCheckBean")
	@SessionScope
	public PresentPageCheckBean presentPage() {
		return new PresentPageCheckBean();
	}	
	
	@Bean("userShoppingCartList")
	@SessionScope
	public List<ShoppingCartBean> userShoppingCartList() {
		return new ArrayList<ShoppingCartBean>();
	}
	
	
	
}
