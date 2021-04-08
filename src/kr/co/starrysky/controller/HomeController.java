package kr.co.starrysky.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.beans.WeatherStarBean;

@Controller
public class HomeController {
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	@Resource(name="weatherMap")
	private Map<String, List<WeatherStarBean>> weatherMap;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "redirect:/main";
	}
}

