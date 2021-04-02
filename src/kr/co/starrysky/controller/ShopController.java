package kr.co.starrysky.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.starrysky.beans.PresentPageCheckBean;
import kr.co.starrysky.service.ProductService;

@Controller
@RequestMapping("/shop")
public class ShopController{
	
	@Autowired
	private ProductService productService;
	
	@Resource(name="presentPageCheckBean")
	private PresentPageCheckBean presentPageCheckBean;
	
	@GetMapping("/index")
	public String shop_index() {
		presentPageCheckBean.setPresentPage(true);
		//System.out.println(presentPageCheckBean.isPresentPage());
		productService.getProductList();
		productService.getSaleProductList();
		
		return "shop/index";
		
	}
	//지워도될듯
	@GetMapping("/starry_top")
	public String starry_top() {
		return "include/starry_top";
	}
	
	
	//이동?
	@GetMapping("/shop_board_main")
	public String shop_board_main() {
		return "shop/board/main";
		
	}
	
	
}
