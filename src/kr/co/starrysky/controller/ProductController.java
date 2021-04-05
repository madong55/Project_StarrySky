package kr.co.starrysky.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.ProductTypeBean;
import kr.co.starrysky.beans.ShoppingCartBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.service.ProductService;

@Controller
@RequestMapping("/shop/product")
public class ProductController {
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/insert_product")
	public String insert_product(@ModelAttribute("insertProductBean") ProductBean insertProductBean) {
		
		return "shop/product/insert_product";
	}
	
	@PostMapping("/insert_product_pro")
	public String insert_product_pro(@ModelAttribute("insertProductBean") ProductBean insertProductBean) {
		
		productService.insertProductBean(insertProductBean);
		return "shop/product/insert_product_success";
	}
	
	@GetMapping("/product_list")
	public String product_list(Model model) {
		
		//상품카테고리
		List<ProductTypeBean> productTypeList = productService.getProductType();
		model.addAttribute("productTypeList", productTypeList);
		
		//세일상품 전체
		List<ProductBean> saleAllProductList = productService.getSaleAllProductList();
		model.addAttribute("saleAllProductList", saleAllProductList);
		
		//세일상품 카테고리별
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
		
		//상품 카테고리별
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
	
	@GetMapping("/product_details")
	public String shop_shopDetails(@RequestParam("product_id") String product_id,
								   @RequestParam("product_category_id") String product_category_id,
			                       Model model) {
		//제품상세정보
		ProductBean detailsProductBean = productService.getProductInfo(product_id);
		model.addAttribute("detailsProductBean", detailsProductBean);
		
		//비슷한상품정보
		List<ProductBean> similarProductList = productService.getProductList(product_category_id);
		model.addAttribute("similarProductList", similarProductList);
		
		return "shop/product/product_details";
		
	}
	
	@GetMapping("/shopping_cart_from_details")
	public String shopping_cart_from_details(@RequestParam("product_id") String product_id,
											 @RequestParam("product_temp_quantity") int product_temp_quantity,
											 Model model) {
		//유저정보 불러오기
		String user_email = loginUserBean.getUser_email();
		
		System.out.println(user_email);
		//장바구니정보 갱신
		productService.insertInfoOrPlusQuantity(user_email, product_id, product_temp_quantity);
		
		//장바구니정보 불러오기
		List<ShoppingCartBean> shoppingCartList = productService.getShoppingCartInfo(user_email);
		model.addAttribute("shoppingCartList", shoppingCartList);
		
		return "shop/product/shopping_cart";
	}
	
	@GetMapping("/shopping_cart")
	public String shop_shopingCart() {
		return "shop/product/shopping_cart";
		
	}
	
	@GetMapping("/addCart")
	public void addCart() {
		productService.addCart(null);
	}
	
}
