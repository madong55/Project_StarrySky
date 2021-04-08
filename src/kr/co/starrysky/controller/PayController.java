package kr.co.starrysky.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.starrysky.beans.PayBean;
import kr.co.starrysky.beans.TempQuantityAndPriceBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.mapper.PayMapper;
import kr.co.starrysky.service.PayService;

@Controller
@RequestMapping("/pay")
public class PayController {
	
	@Autowired
	private PayService payService;

	@Autowired
	PayMapper paymapper;
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
// ================================================
	
	@GetMapping("/mypay")
	public String mypay(@RequestParam("product_id") String product_id,
						@RequestParam("product_category_id") String product_category_id,
				  	    @RequestParam("product_name") String product_name,
						@RequestParam("product_price") int product_price,
						@RequestParam("product_temp_quantity") int product_temp_quantity,
						Model model) {
		//@ModelAttribute("tempCartAndTotalPriceList") TempQuantityAndPriceBean tempCartAndTotalPriceList, 
		//@RequestParam("totalPrice") int totalPrice, Model model
		//tempCartAndTotalPriceList
		model.addAttribute("product_id", product_id);
		model.addAttribute("product_category_id", product_category_id);
		model.addAttribute("product_name", product_name);
		model.addAttribute("product_price", product_price);
		model.addAttribute("product_temp_quantity", product_temp_quantity);
		
		System.out.println("mypay"+product_category_id);
		
		return "pay/mypay";
	}
	
	@GetMapping("/input_card")
	public String input_card(@RequestParam("product_id") String product_id,
							 @RequestParam("product_category_id") String product_category_id,
							 @RequestParam("product_name") String product_name,
							 @RequestParam("product_price") int product_price,
							 @RequestParam("product_temp_quantity") int product_temp_quantity,
							 HttpSession session, Model model) {
		
		System.out.println(product_category_id);
		session.setAttribute("id", loginUserBean.getUser_email());
		String userid = loginUserBean.getUser_email();
		System.out.println(loginUserBean.getUser_email());
		model.addAttribute("userid", userid);
		model.addAttribute("product_id", product_id);
		model.addAttribute("product_category_id", product_category_id);
		model.addAttribute("product_name", product_name);
		model.addAttribute("product_price", product_price);
		model.addAttribute("product_temp_quantity", product_temp_quantity);
		System.out.println(product_category_id);
		return "pay/input_card";
	}
	
	@GetMapping("/input_cash")
	public String input_cash(@RequestParam("product_id") String product_id,
							 @RequestParam("product_category_id") String product_category_id,
			 				 @RequestParam("product_name") String product_name,
			 				 @RequestParam("product_price") int product_price,
			 				 @RequestParam("product_temp_quantity") int product_temp_quantity,
			 				 HttpSession session, Model model) {
		
		System.out.println("input_cash"+product_category_id);
		session.setAttribute("id", loginUserBean.getUser_email());
		String userid = loginUserBean.getUser_email();
		System.out.println(loginUserBean.getUser_email());
		model.addAttribute("userid", userid);
		model.addAttribute("product_id", product_id);
		model.addAttribute("product_category_id", product_category_id);
		model.addAttribute("product_name", product_name);
		model.addAttribute("product_price", product_price);
		model.addAttribute("product_temp_quantity", product_temp_quantity);
		return "pay/input_cash";
	}
	
	@GetMapping("/kakaopay")
	public String kakaopay() {
		return "pay/kakaopay";
	}
	
	@PostMapping("/input_pro")
	public String input_pro(PayBean databean) {
		paymapper.insert_into(databean);
		return "pay/input_pro";
	}

	@GetMapping("/read_data")
	public String read_data(Model model) {
		List<PayBean> list=paymapper.select_data();
		
		model.addAttribute("list",list);
		
		return "pay/read_data";
	}

		
	

	@GetMapping("/mypay_list")
	public String pay(Model model) {
	
		String userid = loginUserBean.getUser_email();
		List<PayBean> payList=payService.getCardList(userid);
		model.addAttribute("payList", payList);
		
		return "pay/mypay_list";
	}


	
	
	

	
	
	
}