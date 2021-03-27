package kr.co.starrysky.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class ShopController {

	@GetMapping("/shop")
	public String shop() {
		return "shop/index";
	}
}
