package kr.co.starrysky.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.service.UserService;

@Controller
@RequestMapping("/shop/order")
public class OrderController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/checkout")
	public String shop_checkout() {
		return "shop/order/checkout";
		
	}
	
	@GetMapping("/요청")//장바구니정보도 가지고 들어가야함
	public String addOrderDetails(@ModelAttribute("purchaseUserBean") UserBean purchaseUserBean ) {
		
		userService.getLoginUserInfo(purchaseUserBean);
		
		return "/응답";
	}
	
	//결제성공시 장바구니정보 삭제후 shop메인페이지로 리턴, 실패시 장바구니페이지로 리턴
}
