package kr.co.starrysky.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.QnAContentBean;
import kr.co.starrysky.beans.QnAPageBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.service.QnABoardService;

@Controller
@RequestMapping("/shop/board")
public class QnABoardController {
	
	@Autowired
	private QnABoardService qnaBoardService;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@GetMapping("/main")
	public String main(@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		
		List<QnAContentBean> qnaContentList = qnaBoardService.getQnAContentList(page);
		model.addAttribute("qnaContentList", qnaContentList);
		
		QnAPageBean qnaPageBean = qnaBoardService.getQnAContentCnt(page);
		model.addAttribute("qnaPageBean", qnaPageBean);
		
		model.addAttribute("page", page);
		
		return "shop/board/main";
	}
	
	
	@GetMapping("/read")
	public String read(@RequestParam("qna_num") int qna_num, Model model) {

		model.addAttribute("qna_num", qna_num);
		
		QnAContentBean readQaAContentBean=qnaBoardService.getQnAContentInfo(qna_num);
		
		model.addAttribute("readQaAContentBean",readQaAContentBean);
		model.addAttribute("loginUserBean",loginUserBean);

		
		return "shop/board/read";
	}
	
	@GetMapping("/write")
	public String write(@ModelAttribute("writeQnAContentBean") QnAContentBean writeQnAContentBean, Model model) {
		
		
		// 상품명 리스트로 가져오게
		List<ProductBean> productList = qnaBoardService.getProductList();
		model.addAttribute("productList",productList);
		
		return "shop/board/write";
	}
	
	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeQnAContentBean") QnAContentBean writeQnAContentBean, BindingResult result, Model model) {
	
		List<ProductBean> productList = qnaBoardService.getProductList();
		model.addAttribute("productList", productList);
		
		if (result.hasErrors()) {
			return "shop/board/write";
		}
		System.out.println("qna write_pro qna_num : "+writeQnAContentBean.getQna_num());
		qnaBoardService.addQnAContentInfo(writeQnAContentBean);
		
		return "shop/board/write_success";
	}
	
	//===============================
	@GetMapping("/modify")
	public String modify(@RequestParam("qna_num") int qna_num, @ModelAttribute("modifyQnAContentBean") QnAContentBean modifyQnAContentBean, Model model) {
		
		model.addAttribute("qna_num", qna_num);
		
		// 게시글 하나의 정보 가져오기
		QnAContentBean tempQnAContentBean = qnaBoardService.getQnAContentInfo(qna_num);
		
		modifyQnAContentBean.setProduct_id(tempQnAContentBean.getProduct_id());
		modifyQnAContentBean.setQna_num(tempQnAContentBean.getQna_num());
		modifyQnAContentBean.setUser_nickname(tempQnAContentBean.getUser_nickname());
		modifyQnAContentBean.setQna_date(tempQnAContentBean.getQna_date());
		modifyQnAContentBean.setQna_subject(tempQnAContentBean.getQna_subject());
		modifyQnAContentBean.setQna_contents(tempQnAContentBean.getQna_contents());
		
		// 상품명 리스트로 가져오게
		List<ProductBean> productList = qnaBoardService.getProductList();
		model.addAttribute("productList",productList);
		
		return "shop/board/modify";
	}
	
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @RequestParam("qna_num") int qna_num, @ModelAttribute("modifyQnAContentBean") QnAContentBean modifyQnAContentBean, BindingResult result, Model model) {
		
		model.addAttribute("qna_num", qna_num);
		
		if(result.hasErrors()) {
			return "shop/board/modify";
		}
		
		qnaBoardService.modifyQnAContentBean(modifyQnAContentBean);

		return "shop/board/modify_success";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("qna_num") int qna_num, Model model) {
		
		qnaBoardService.deleteQnAContentInfo(qna_num);
		
		return "shop/board/delete";
	}

	@GetMapping("/not_write")
	public String not_write() {
		
		return "shop/board/not_write";
		
	}
	
}

