package kr.co.starrysky.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.starrysky.beans.WeatherStarBean;

@Controller
public class MapController {

	@Resource(name="weatherMap")
	private Map<String, List<WeatherStarBean>> weatherMap;
	
	@GetMapping("/map")
	public String map(Model model) {
		
		model.addAttribute("weather_map", weatherMap);
		return "map_test";
	}
}
