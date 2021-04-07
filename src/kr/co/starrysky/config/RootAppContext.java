package kr.co.starrysky.config;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Autowired
	public WeatherService weatherService;
	
	@Autowired
	public LocationService locationService;
	
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
	
	@Bean("weatherMap")
	@ApplicationScope
	public Map<WeatherKey, WeatherStarBean> weatherMap(){
		//쿼리 만들어서 고쳐야 함.
		Map<WeatherKey, WeatherStarBean> weather_map = new HashMap<>(); 
		
		WeatherKey wk = new WeatherKey();
		
		WeatherStarBean wsb = new WeatherStarBean();
		
		List<Location2Bean> l2b_list = locationService.getLocation2BeanList();
		
		List<WeatherStarBean> wsb_list;
		
		for(Location2Bean bean : l2b_list) {
			wsb_list = weatherService.getRecent5Forecast(String.valueOf(bean.getLocation2_id()), String.valueOf(bean.getLocation1_id()));
			
			for(WeatherStarBean sbean : wsb_list) {
				wk.setLocation1_key(sbean.getLocation1_id());
				wk.setLocation2_key(sbean.getLocation2_id());
				wk.setForecast_date(sbean.getForecast_date());
				
				weather_map.put(wk, sbean);
			}
		}
		
		return weather_map;
	}
	
}
