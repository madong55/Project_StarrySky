package kr.co.starrysky.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.ProductTypeBean;
import kr.co.starrysky.service.ProductService;

@Controller
@RequestMapping("/shop/product")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/product_list")
	public String product_list(Model model) {
		
		List<ProductTypeBean> productTypeList = productService.getProductType();
		model.addAttribute("productTypeList", productTypeList);
		
		List<ProductBean> saleAllProductList = productService.getSaleAllProductList();
		model.addAttribute("saleAllProductList", saleAllProductList);
		
		List<ProductBean> saleProductListTent = productService.getSaleProductList("tent");
		List<ProductBean> saleProductListSlpbag = productService.getSaleProductList("slpbag");
		List<ProductBean> saleProductListBackpack = productService.getSaleProductList("backpack");
		List<ProductBean> saleProductListHeater = productService.getSaleProductList("heater");
		List<ProductBean> saleProductListLight = productService.getSaleProductList("light");

		model.addAttribute("saleProductListTent", saleProductListTent);
		model.addAttribute("saleProductListSlpbag", saleProductListSlpbag);
		model.addAttribute("saleProductListBackpack", saleProductListBackpack);
		model.addAttribute("saleProductListHeater", saleProductListHeater);
		model.addAttribute("saleProductListLight", saleProductListLight);
		
		List<ProductBean> productListTent = productService.getProductList("tent");
		List<ProductBean> productListSlpbag = productService.getProductList("slpbag");
		List<ProductBean> productListBackpack = productService.getProductList("backpack");
		List<ProductBean> productListHeater = productService.getProductList("heater");
		List<ProductBean> productListLight = productService.getProductList("light");
		
		model.addAttribute("productListTent", productListTent);
		model.addAttribute("productListSlpbag", productListSlpbag);
		model.addAttribute("productListBackpack", productListBackpack);
		model.addAttribute("productListHeater", productListHeater);
		model.addAttribute("productListLight", productListLight);
		
		//return "shop/product/product_list";
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
