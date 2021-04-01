package kr.co.starrysky.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

public class UserBean {
	
	@Size(min=2, max=20)
	@Pattern(regexp = "([가-힣]*)|([a-zA-Z]*)")	
	private String user_name;
	
	@Pattern(regexp = "[가-힣a-zA-Z0-9]{2,12}")	
	private String user_nickname;
	
	@Pattern(regexp = "[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}")
	private String user_email;
	
	@Size(min=8, max=20)
	@Pattern(regexp = "^.*(?=.{8,20})(?=.*[!,@,#,$,%,^,&,*,?,_,~])(?=.*[0-9])(?=.*[a-zA-Z]).*$")
	private String user_pw;
	
	@Size(min=8, max=20)
	@Pattern(regexp = "^.*(?=.{8,20})(?=.*[!,@,#,$,%,^,&,*,?,_,~])(?=.*[0-9])(?=.*[a-zA-Z]).*$")
	private String user_pw2;
	
	@Pattern(regexp = "^[0-9]{2,3}[0-9]{3,4}[0-9]{4}")
	private String user_phone_number;
	
	private String latestPage;
	private MultipartFile user_profile_image;
	private boolean userIdExist;
	private boolean userLogin;
	
	public UserBean() {
		this.userIdExist=false;
		this.userLogin=false;
		this.latestPage="main";
	}
	
	
	public String getLatestPage() {
		return latestPage;
	}

	public void setLatestPage(String latestPage) {
		this.latestPage = latestPage;
	}


	public boolean isUserLogin() {
		return userLogin;
	}
	public void setUserLogin(boolean userLogin) {
		this.userLogin = userLogin;
	}
	public boolean isUserIdExist() {
		return userIdExist;
	}
	public void setUserIdExist(boolean userIdExist) {
		this.userIdExist = userIdExist;
	}
	public String getUser_pw2() {
		return user_pw2;
	}
	public void setUser_pw2(String user_pw2) {
		this.user_pw2 = user_pw2;
	}
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_phone_number() {
		return user_phone_number;
	}
	public void setUser_phone_number(String user_phone_number) {
		this.user_phone_number = user_phone_number;
	}


	public MultipartFile getUser_profile_image() {
		return user_profile_image;
	}
	public void setUser_profile_image(MultipartFile user_profile_image) {
		this.user_profile_image = user_profile_image;
	}
	
	
}
