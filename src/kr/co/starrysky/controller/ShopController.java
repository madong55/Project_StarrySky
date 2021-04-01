package kr.co.starrysky.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.starrysky.beans.PresentPageCheckBean;

@Controller
public class ShopController{
	
	@Resource(name="presentPageCheckBean")
	private PresentPageCheckBean presentPageCheckBean;
	
	@GetMapping("/shop_index")
	public String shop_index() {
		presentPageCheckBean.setPresentPage(true);
		//System.out.println(presentPageCheckBean.isPresentPage());
		return "shop/index";
		
	}
	
	@GetMapping("/starry_top")
	public String starry_top() {
		return "include/starry_top";
	}
	
	@GetMapping("/shop_checkout")
	public String shop_checkout() {
		return "shop/checkout";
		
	}
	
	@GetMapping("/shop_shop-details")
	public String shop_shopDetails() {
		return "shop/shop-details";
		
	}
	
	@GetMapping("/shop_shop-grid")
	public String shop_shopGrid() {
		return "shop/shop-grid";
		
	}
	
	@GetMapping("/shop_shoping-cart")
	public String shop_shopingCart() {
		return "shop/shoping-cart";
		
	}
	
	@GetMapping("/shop_blog")
	public String shop_blog() {
		return "shop/blog";
		
	}
	
	@GetMapping("/shop_blog-details")
	public String shop_blog_details() {
		return "shop/blog-details";
		
	}
	
}
