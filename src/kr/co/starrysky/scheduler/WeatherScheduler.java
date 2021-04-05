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

import kr.co.starrysky.beans.WeatherKey;

@Component
public class WeatherScheduler {
	
	public boolean updateLocationWeatherFromJSON(int location_key) throws JSONException, IOException {
		
		
		String url = "http://dataservice.accuweather.com/forecasts/v1/daily/5day/498?apikey=Wt1VIDg17MjAwkEFdL0crjSaGY4TwMn2&details=true&metric=true";
		
		JSONObject weather_json;
		
		try {
			weather_json = JsonReader.readJsonFromUrl(url);
			
			
			
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
