package kr.co.starrysky.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DaysController {

	@GetMapping("/day1_kw")
	public String day1_kw() {
		
		return "grade2/kw_day1";
	}
	
	@GetMapping("/day2_kw")
	public String day2_kw() {
		
		return "grade2/kw_day2";
	}
	
	@GetMapping("/day3_kw")
	public String day3_kw() {
		
		return "grade2/kw_day3";
	}
	
	@GetMapping("/day4_kw")
	public String day4_kw() {
		
		return "grade2/kw_day4";
	}
	
	@GetMapping("/day5_kw")
	public String day5_kw() {
		
		return "grade2/kw_day5";
	}
	
	@GetMapping("/day1_jj")
	public String day1_jj() {
		
		return "grade2/jj_day1";
	}
	
	@GetMapping("/day2_jj")
	public String day2_jj() {
		
		return "grade2/jj_day2";
	}
	
	@GetMapping("/day3_jj")
	public String day3_jj() {
		
		return "grade2/jj_day3";
	}
	
	@GetMapping("/day4_jj")
	public String day4_jj() {
		
		return "grade2/jj_day4";
	}
	
	@GetMapping("/day5_jj")
	public String day5_jj() {
		
		return "grade2/jj_day5";
	}
	

	
	
}
