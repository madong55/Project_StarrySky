package kr.co.starrysky.beans;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

public class ReviewBean {
	
	private int review_num;			 // 리뷰게시글번호
	private int location1_id;	 // 상위지역id
	private int location2_id;	 // 하위지역id
    private String location2_name;	 // 하위지역이름
    private String user_nickname; 	 // 닉네임
    private String user_email;		 // 아이디(이메일)
    
    //@NotNull
    //@Max(5)
	//@Min(0)
    private int review_score; 		 // 리뷰별점
    
    @NotBlank
    private String review_subject; 	 // 리뷰제목
    @NotBlank
    private String review_contents;  // 리뷰내용

    private String review_date;		 // 리뷰작성날짜
    
	private MultipartFile review_file; // 업로드 위한
	
    private String review_image;  	 // 리뷰이미지
    
    private String recommnd_product; // 추천 상품

	public int getReview_num() {
		return review_num;
	}

	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}

	public int getLocation1_id() {
		return location1_id;
	}

	public void setLocation1_id(int location1_id) {
		this.location1_id = location1_id;
	}

	public int getLocation2_id() {
		return location2_id;
	}

	public void setLocation2_id(int location2_id) {
		this.location2_id = location2_id;
	}

	public String getLocation2_name() {
		return location2_name;
	}

	public void setLocation2_name(String location2_name) {
		this.location2_name = location2_name;
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

	public int getReview_score() {
		return review_score;
	}

	public void setReview_score(int review_score) {
		this.review_score = review_score;
	}

	public String getReview_subject() {
		return review_subject;
	}

	public void setReview_subject(String review_subject) {
		this.review_subject = review_subject;
	}

	public String getReview_contents() {
		return review_contents;
	}

	public void setReview_contents(String review_contents) {
		this.review_contents = review_contents;
	}

	public String getReview_date() {
		return review_date;
	}

	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}

	public MultipartFile getReview_file() {
		return review_file;
	}

	public void setReview_file(MultipartFile review_file) {
		this.review_file = review_file;
	}

	public String getReview_image() {
		return review_image;
	}

	public void setReview_image(String review_image) {
		this.review_image = review_image;
	}

	public String getRecommnd_product() {
		return recommnd_product;
	}

	public void setRecommnd_product(String recommnd_product) {
		this.recommnd_product = recommnd_product;
	}
	

}
