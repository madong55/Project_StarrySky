package kr.co.starrysky.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.co.starrysky.service.UserService;

@RestController
public class RestApiController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/user/checkUserIdExist/{user_email}")
	public String checkUserIdExist(@PathVariable String user_email) {
		
		boolean chk = userService.checkUserIdExist(user_email);
		
		return chk+"";
	}
}
