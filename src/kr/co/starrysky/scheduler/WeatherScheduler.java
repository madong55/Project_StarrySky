package kr.co.starrysky.scheduler;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

import com.google.gson.Gson;

import kr.co.starrysky.beans.WeatherKey;
import kr.co.starrysky.scheduler.schema.AccuWeather5Days;

@Component
public class WeatherScheduler {
	
	public static Gson objGson = new Gson();
	
	public boolean updateLocationWeatherFromJSON() throws JSONException, IOException {
		
		
		String url = "http://dataservice.accuweather.com/forecasts/v1/daily/5day/498?apikey=Wt1VIDg17MjAwkEFdL0crjSaGY4TwMn2&details=true&metric=true";
		
		JSONObject weather_json;
		AccuWeather5Days forecast_data;
		
		try {
			weather_json = JsonReader.readJsonFromUrl(url);
			
			forecast_data = objGson.fromJson(weather_json.toString(), AccuWeather5Days.class);
			
			System.out.println(forecast_data.toString());
			System.out.println(forecast_data.getDailyForecasts().get(0).getTemperature().getMaximum().getValue());
			System.out.println(forecast_data.getDailyForecasts().get(0).getTemperature().getMinimum().getValue());
			
			
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static void main(String[] args) throws JSONException, IOException {
		WeatherScheduler ws = new WeatherScheduler();
		
		ws.updateLocationWeatherFromJSON();
		
	}
	
}
