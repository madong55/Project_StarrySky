package kr.co.starrysky.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop/product")
public class ProductController {
	
	@GetMapping("/shop_details")
	public String shop_shopDetails() {
		return "shop/product/shop_details";
		
	}
	
	@GetMapping("/shoping_cart")
	public String shop_shopingCart() {
		return "shop/product/shoping_cart";
		
	}
}
