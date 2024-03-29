package kr.co.starrysky.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.starrysky.beans.PresentPageCheckBean;
import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.ReviewBean;
import kr.co.starrysky.beans.WeatherStarBean;
import kr.co.starrysky.service.LocationService;
import kr.co.starrysky.service.ProductService;
import kr.co.starrysky.service.ReviewService;
import kr.co.starrysky.service.WeatherService;

@Controller
public class MainController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private WeatherService weatherService;
	
	@Autowired
	private LocationService locationService;
	
	@Autowired
	private ReviewService reviewService;
	
	@Resource(name="presentPageCheckBean")
	private PresentPageCheckBean presentPageCheckBean;
	
	@Resource(name="weatherMap")
	private Map<String, List<WeatherStarBean>> weatherMap;
	
	@GetMapping("/main")
	public String main(Model model) {
	presentPageCheckBean.setPresentPage(false);
	//System.out.println(presentPageCheckBean.isPresentPage());
	
	List<ProductBean> saleAllProductList = productService.getSaleAllProductList();
	model.addAttribute("saleAllProductList", saleAllProductList);
	model.addAttribute("weather_map", weatherMap);
	
	Set<String> key_set = weatherMap.keySet();
	
	Iterator<String> it = key_set.iterator();
	
	while(it.hasNext()) {
		String temp = it.next();
		for(int i=0; i<5; i++) {
			try {
				System.out.println("weather_map exists-"+ i + ": "+weatherMap.get(temp).get(i).getLocation1_id()+","+weatherMap.get(temp).get(i).getLocation2_id());
				
			}catch(Exception e) {
				
				System.out.println("error");
			}
		}
	}
	
	List<ReviewBean> tempMainReviewBean = reviewService.getTempMainReviewInfo();
	model.addAttribute("tempMainReviewBean", tempMainReviewBean);
	
	return "main";
	}

	
}
