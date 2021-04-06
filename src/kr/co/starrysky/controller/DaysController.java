package kr.co.starrysky.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DaysController {

	@GetMapping("/kw_day1")
	public String kw_day1() {
		
		return "grade2/kw_day1";
	}
	
	@GetMapping("/kw_day2")
	public String kw_day2() {
		
		return "grade2/kw_day2";
	}
	
	@GetMapping("/kw_day3")
	public String kw_day3() {
		
		return "grade2/kw_day3";
	}
	
	@GetMapping("/kw_day4")
	public String kw_day4() {
		
		return "grade2/kw_day4";
	}
	
	@GetMapping("/kw_day5")
	public String kw_day5() {
		
		return "grade2/kw_day5";
	}
	
	@GetMapping("/jj_day1")
	public String jj_day1() {
		
		return "grade2/jj_day1";
	}
	
	@GetMapping("/jj_day2")
	public String jj_day2() {
		
		return "grade2/jj_day2";
	}
	
	@GetMapping("/jj_day3")
	public String jj_day3() {
		
		return "grade2/jj_day3";
	}
	
	@GetMapping("/jj_day4")
	public String jj_day4() {
		
		return "grade2/jj_day4";
	}
	
	@GetMapping("/jj_day5")
	public String jj_day5() {
		
		return "grade2/jj_day5";
	}
	
	@GetMapping("/review/review1")
	public String review1() {
		return "review/review1";
	}
	
	
	
}
