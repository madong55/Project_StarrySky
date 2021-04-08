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

	@Bean("weatherService")
	@ApplicationScope
	public WeatherService weatherService() {
		return new WeatherService();
	};
	
	@Bean("locationService")
	@ApplicationScope
	public LocationService locationService() {
		return new LocationService();
	};
	
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
	public Map<String, List<WeatherStarBean>> weatherMap(){
		//쿼리 만들어서 고쳐야 함.
		Map<String, List<WeatherStarBean>> weather_map = new HashMap<>(); 
		
		
		List<String> location_id_list = locationService().getAllLocationIdList();
		
		
		Location2Bean l2b = new Location2Bean();
		
		WeatherStarBean wsb = new WeatherStarBean();
		
		List<WeatherStarBean> wsb_list;
		
		for(String s : location_id_list) {
			if(locationService().isLocation2Id(s)&&!s.equals("0")) {
				l2b = locationService().expandLocationKey(s);
				
				//weather_map.put(s, );
			}
			
			//wsb_list = weatherService().getRecent5Forecast(String.valueOf(bean.getLocation2_id()), String.valueOf(bean.getLocation1_id()));
			/*
			for(WeatherStarBean sbean : wsb_list) {
				wk.setLocation1_key(sbean.getLocation1_id());
				wk.setLocation2_key(sbean.getLocation2_id());
				wk.setForecast_date(sbean.getForecast_date());
				
				weather_map.put(wk, sbean);
			*/
			
		}
		
		return weather_map;
	}
	
}
