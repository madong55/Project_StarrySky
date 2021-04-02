package kr.co.starrysky.beans;

import javax.validation.constraints.NotBlank;

// QnA 게시글에 대한 정보를 저장
public class QnAContentBean {
	
	private String product_id; // 상품명

	private int qna_num; // 게시물 번호
	
	//@NotBlank // not null -> 아무것도  안쓰고 입력하려고 하면 유효성 검사에 걸리게 //multipart는 얘를 읽지 못함
	private String qna_subject;  // 글 제목
	
	//@NotBlank
	private String qna_contents; // 글 내용
	
	private String user_nickname; // 글 쓴 사람
	private String user_email; //user_name 을 content_write_name을 바꾸려고 하는
	private String qna_date; // 날짜 자동

	private int ref; // 게시글 관련
	private int re_step; // 리플번호
	private int re_level; // 리플 최근꺼가 올라오게
	
	private int readcount; // 조회수

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public int getQna_num() {
		return qna_num;
	}

	public void setQna_num(int qna_num) {
		this.qna_num = qna_num;
	}

	public String getQna_subject() {
		return qna_subject;
	}

	public void setQna_subject(String qna_subject) {
		this.qna_subject = qna_subject;
	}

	public String getQna_contents() {
		return qna_contents;
	}

	public void setQna_contents(String qna_contents) {
		this.qna_contents = qna_contents;
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

	public String getQna_date() {
		return qna_date;
	}

	public void setQna_date(String qna_date) {
		this.qna_date = qna_date;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getRe_step() {
		return re_step;
	}

	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}

	public int getRe_level() {
		return re_level;
	}

	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

}
