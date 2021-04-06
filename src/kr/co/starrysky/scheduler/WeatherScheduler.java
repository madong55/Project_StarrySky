package kr.co.starrysky.scheduler;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.google.gson.Gson;

import kr.co.starrysky.beans.WeatherBean;
import kr.co.starrysky.beans.WeatherKey;
import kr.co.starrysky.scheduler.schema.AccuWeather5Days;
import kr.co.starrysky.service.WeatherService;

@Component
public class WeatherScheduler {
	
	@Autowired
	public WeatherService weatherService;
	
	public static Gson objGson = new Gson();
	
	public boolean updateLocationWeatherFromJSON() throws JSONException, IOException {
		
		List<String> location_ids = weatherService.location1_list();
		location_ids.addAll(weatherService.location2_list());
		
		String url_head = "http://dataservice.accuweather.com/forecasts/v1/daily/5day/";
		String url_tail = "?apikey=Wt1VIDg17MjAwkEFdL0crjSaGY4TwMn2&details=true&metric=true";
		
		JSONObject weather_json;
		AccuWeather5Days forecast_data;
		Map<WeatherKey, WeatherBean> weather_map = new HashMap<>();
		
		for(String id:location_ids) {
			
			try {
				weather_json = JsonReader.readJsonFromUrl(url_head+id+url_tail);
				
				forecast_data = objGson.fromJson(weather_json.toString(), AccuWeather5Days.class);
				
				System.out.println(forecast_data.toString());
				System.out.println(forecast_data.getDailyForecasts().get(0).getTemperature().getMaximum().getValue());
				System.out.println(forecast_data.getDailyForecasts().get(0).getTemperature().getMinimum().getValue());
				
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
