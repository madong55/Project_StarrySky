package kr.co.starrysky.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.starrysky.beans.PresentPageCheckBean;

@Controller
@RequestMapping("/shop")
public class ShopController{
	
	@Resource(name="presentPageCheckBean")
	private PresentPageCheckBean presentPageCheckBean;
	
	@GetMapping("/index")
	public String shop_index() {
		presentPageCheckBean.setPresentPage(true);
		//System.out.println(presentPageCheckBean.isPresentPage());
		
		return "forward:product/product_list";
		
				
		}
		
		
	
	//지워도될듯
	@GetMapping("/starry_top")
	public String starry_top() {
		return "include/starry_top";
	}
	
	
}
