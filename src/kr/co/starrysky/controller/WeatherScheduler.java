package kr.co.starrysky.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import com.google.gson.Gson;

import kr.co.starrysky.beans.Location2Bean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.beans.WeatherBean;
import kr.co.starrysky.beans.WeatherKey;
import kr.co.starrysky.scheduler.JsonReader;
import kr.co.starrysky.scheduler.schema.AccuWeather5Days;
import kr.co.starrysky.scheduler.schema.DailyForecast;
import kr.co.starrysky.service.LocationService;
import kr.co.starrysky.service.WeatherService;

@Component
@Controller
public class WeatherScheduler {
	
	@Autowired
	public WeatherService weatherService;
	
	@Autowired
	public LocationService locationService;
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	public static Gson objGson = new Gson();
	
	@GetMapping("updateDB")
	public String updateLocationWeatherFromJSON() throws JSONException, IOException {
		
		String pattern = "yyyy-MM-dd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		List<String> location_ids =null;
		
		try {
			
			location_ids = locationService.getAllLocationIdList();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String url_head = "http://dataservice.accuweather.com/forecasts/v1/daily/5day/";
		String url_tail = "?apikey=fwZnmuj5EEcAZ3811NskvQrnlcGrDBUx&details=true&metric=true";
		
		JSONObject weather_json;
		AccuWeather5Days forecast_data;
		
		
		for(String id:location_ids) {
			
			try {
				
				weather_json = JsonReader.readJsonFromUrl(url_head+id+url_tail);
				
				forecast_data = objGson.fromJson(weather_json.toString(), AccuWeather5Days.class);
				
				for(int i=0;i<5;i++) {
					
					DailyForecast df = forecast_data.getDailyForecasts().get(i);
					
					WeatherBean bean = new WeatherBean();
					
					bean.setAir_quality_value(df.getAirAndPollen().get(0).getValue().intValue());
					bean.setCloud_cover(df.getNight().getCloudCover().intValue());
					bean.setForecast_date(df.getDate());
					bean.setHeadline(forecast_data.getHeadline().getText());
					bean.setHour_of_rain(df.getNight().getHoursOfRain());
					bean.setHour_of_snow(df.getNight().getHoursOfSnow());
					bean.setIcon(df.getNight().getIcon().intValue());
					bean.setIcon_phrase(df.getNight().getIconPhrase());
					
					if(locationService.isLocation1Id(id)) {
						bean.setLocation1_id(Integer.valueOf(id));
						bean.setLocation2_id(0);
					}else if(locationService.isLocation2Id(id)) {
						Location2Bean l2b = locationService.expandLocationKey(id); 
						bean.setLocation1_id(l2b.getLocation1_id());
						bean.setLocation2_id(l2b.getLocation2_id());
					}else {
						System.out.println("weather scheduler : location id error.");
					}
					bean.setLong_phrase(df.getNight().getLongPhrase());
					bean.setMoon_age(df.getMoon().getAge().intValue());
					bean.setMoon_rise(df.getMoon().getRise());
					bean.setMoon_set(df.getMoon().getSet());
					//
					
					if(df.getNight().getRain().getValue()>0) {
						bean.setRain_precipitation_exist(true);
					}else {
						bean.setRain_precipitation_exist(false);
					}
					
					//bean.setRain_precipitation_intensity(df.getNight().getR);
					bean.setRain_probability(df.getNight().getRainProbability().intValue());
					bean.setRain_unit(df.getNight().getRain().getUnit());
					bean.setRain_unit_type(df.getNight().getRain().getUnitType().intValue());
					bean.setRain_value(df.getNight().getRain().getValue());
					bean.setShort_phrase(df.getNight().getShortPhrase());
					bean.setSnow_probability(df.getNight().getSnowProbability().intValue());
					bean.setSnow_unit(df.getNight().getSnow().getUnit());
					bean.setSnow_unit_type(df.getNight().getSnow().getUnitType().intValue());
					bean.setSnow_value(df.getNight().getSnow().getValue().intValue());
					bean.setSun_rise(df.getSun().getRise());
					bean.setSun_set(df.getSun().getSet());
					bean.setTem_max_value(df.getTemperature().getMaximum().getValue());
					bean.setTem_min_value(df.getTemperature().getMinimum().getValue());
					bean.setWind_speed_unit(df.getNight().getWind().getSpeed().getUnit());
					bean.setWind_speed_unit_type(df.getNight().getWind().getSpeed().getUnitType().intValue());
					bean.setWind_speed_value(df.getNight().getWind().getSpeed().getValue().intValue());
					
					if(bean.getLocation2_id()==0) {
						if(weatherService.getWeatherOfLocation1(String.valueOf(bean.getLocation1_id()), bean.getForecast_date())==null) {
							weatherService.insertWeatherBean(bean);
							System.out.println("location1 : insert");
						}else {
							weatherService.updateWeatherBean(bean);
							System.out.println("location1 : update");
						}
					}else {
						if(weatherService.getWeatherOfLocation2(String.valueOf(bean.getLocation2_id()), bean.getForecast_date())==null) {
							weatherService.insertWeatherBean(bean);
							System.out.println("location2 : insert");
						}else {
							weatherService.updateWeatherBean(bean);
							System.out.println("location2 : update");
						}
					}
				}
				
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
		}
		
		return "";
		
	}

	/*
	public static void main(String[] args) throws JSONException, IOException {
		WeatherScheduler ws = new WeatherScheduler();
		
		
		ws.updateLocationWeatherFromJSON();
		
	}
	*/
	
}
