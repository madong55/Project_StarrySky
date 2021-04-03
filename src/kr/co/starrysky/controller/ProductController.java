package kr.co.starrysky.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.starrysky.service.ProductService;

@Controller
@RequestMapping("/shop/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/product_list")
	public String product_list() {
		productService.getProductList();
		productService.getSaleProductList();
		return "shop/index";
	}
	
	@GetMapping("/shop_details")
	public String shop_shopDetails() {
		return "shop/product/shop_details";
		
	}
	
	@GetMapping("/shoping_cart")
	public String shop_shopingCart() {
		return "shop/product/shoping_cart";
		
	}
}
