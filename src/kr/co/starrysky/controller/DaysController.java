package kr.co.starrysky.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.service.ProductService;

@Controller
public class DaysController {
@Autowired
private ProductService productService;


	//강원도2단계
	@GetMapping("/kw_day1")
	public String kw_day1(@RequestParam("dateinfo") int dateinfo,  @RequestParam("location_id") int location_id ,Model model) {
		List<ProductBean> saleAllProductList = productService.getSaleAllProductList();
		model.addAttribute("saleAllProductList", saleAllProductList);
		model.addAttribute("dateinfo", dateinfo);
		model.addAttribute("location_id", location_id);		
		
		return "grade2/kw_day1";
	}
	
	
	@GetMapping("/jj_day1")
	public String jj_day1(@RequestParam("dateinfo") int dateinfo,  @RequestParam("location_id") int location_id , Model model) {
		
		List<ProductBean> saleAllProductList = productService.getSaleAllProductList();
		model.addAttribute("saleAllProductList", saleAllProductList);
		model.addAttribute("dateinfo", dateinfo);
		model.addAttribute("location_id", location_id);		
	
		return "grade2/jj_day1";
	}
	
	
	
	//테스트용 임시
	@GetMapping("/review/review1")
	public String review1() {
		return "review/review1";
	}
	
	
	
}
