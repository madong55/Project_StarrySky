package kr.co.starrysky.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.starrysky.beans.PresentPageCheckBean;

@Controller
public class MainController {

	@Resource(name="presentPageCheckBean")
	private PresentPageCheckBean presentPageCheckBean;
	
	@GetMapping("/main")
	public String main() {
	presentPageCheckBean.setPresentPage(false);
	System.out.println(presentPageCheckBean.isPresentPage());
		return "main";
	}
	
	
}
