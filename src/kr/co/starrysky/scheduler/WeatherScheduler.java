package kr.co.starrysky.scheduler;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.google.gson.Gson;

import kr.co.starrysky.beans.Location2Bean;
import kr.co.starrysky.beans.WeatherBean;
import kr.co.starrysky.beans.WeatherKey;
import kr.co.starrysky.scheduler.schema.AccuWeather5Days;
import kr.co.starrysky.scheduler.schema.DailyForecast;
import kr.co.starrysky.service.LocationService;
import kr.co.starrysky.service.WeatherService;

@Component
public class WeatherScheduler {
	
	@Autowired
	public WeatherService weatherService;
	
	@Autowired
	public LocationService locationService;
	
	public static Gson objGson = new Gson();
	
	public boolean updateLocationWeatherFromJSON() throws JSONException, IOException {
		
		String pattern = "yyyy-MM-dd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		
		List<String> location_ids = locationService.getAllLocationIdList();
		
		String url_head = "http://dataservice.accuweather.com/forecasts/v1/daily/5day/";
		String url_tail = "?apikey=Wt1VIDg17MjAwkEFdL0crjSaGY4TwMn2&details=true&metric=true";
		
		JSONObject weather_json;
		AccuWeather5Days forecast_data;
		Map<WeatherKey, WeatherBean> weather_map = new HashMap<>();
		
		for(String id:location_ids) {
			
			try {
				
				weather_json = JsonReader.readJsonFromUrl(url_head+id+url_tail);
				
				forecast_data = objGson.fromJson(weather_json.toString(), AccuWeather5Days.class);
				
				for(int i=0;i<5;i++) {
					
					DailyForecast df = forecast_data.getDailyForecasts().get(i);
					
					WeatherBean bean = new WeatherBean();
					
					bean.setAir_quality_value(df.getAirAndPollen().get(0).getValue().intValue());
					bean.setCloud_cover(df.getDay().getCloudCover().intValue());
					bean.setForecast_date(simpleDateFormat.format(df.getDate()));
					bean.setHeadline(forecast_data.getHeadline().getText());
					bean.setHour_of_rain(df.getDay().getHoursOfRain());
					bean.setHour_of_snow(df.getDay().getHoursOfSnow());
					bean.setIcon(df.getDay().getIcon().intValue());
					bean.setIcon_phrase(df.getDay().getIconPhrase());
					
					if(locationService.isLocation1Id(id)) {
						bean.setLocation1_key(Integer.valueOf(id));
						bean.setLocation2_key(0);
					}else if(locationService.isLocation2Id(id)) {
						Location2Bean l2b = locationService.expandLocationKey(id); 
						bean.setLocation1_key(l2b.getLocation1_id());
						bean.setLocation2_key(l2b.getLocation2_id());
					}else {
						System.out.println("weather scheduler : location id error.");
					}
					bean.setLong_phrase(df.getDay().getLongPhrase());
					bean.setMoon_age(df.getMoon().getAge().intValue());
					bean.setMoon_rise(df.getMoon().getRise());
					bean.setMoon_set(df.getMoon().getSet());
					bean.setRain_precipitation_exist(false);
				}
				
				
				
				forecast_data.getHeadline()
				
				
				return true;
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
		}
		
		return false;
		
	}
	
	public static void main(String[] args) throws JSONException, IOException {
		WeatherScheduler ws = new WeatherScheduler();
		
		ws.updateLocationWeatherFromJSON();
		
	}
	
}
