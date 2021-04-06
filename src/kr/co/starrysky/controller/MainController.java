package kr.co.starrysky.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.starrysky.beans.PresentPageCheckBean;
import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.service.ProductService;

@Controller
public class MainController {
	
	@Autowired
	private ProductService productService;
	
	@Resource(name="presentPageCheckBean")
	private PresentPageCheckBean presentPageCheckBean;
	
	@GetMapping("/main")
	public String main(Model model) {
	presentPageCheckBean.setPresentPage(false);
	//System.out.println(presentPageCheckBean.isPresentPage());
	
	List<ProductBean> saleAllProductList = productService.getSaleAllProductList();
	model.addAttribute("saleAllProductList", saleAllProductList);
	
	
	
		return "main";
		
	
	}
	

	
}
