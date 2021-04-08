package kr.co.starrysky.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.QnAContentBean;
import kr.co.starrysky.beans.QnAPageBean;
import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.dao.QnABoardDao;

//프로퍼티즈에 만들어놓은 정적데이터 업로드경로인지시키기. @PropertySource
@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class QnABoardService {

	// option.properties 에 있는, path.upload 뒤의 경로값을 가져와서 path_upload에 저장한다.
	@Value("${path.upload}")
	private String path_upload;

	@Autowired
	private QnABoardDao qnaBoardDao;

	// -------------페이징--------------------------
	@Value("${page.listcnt}")
	private int page_listcnt;

	@Value("${page.paginationcnt}")
	private int page_paginationcnt;
	// -------------------------------------------

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	public void addQnAContentInfo(QnAContentBean writeQnAContentBean) {

		// System.out.println(writeContentBean.getQna_subject()); //게시글 이름
		// System.out.println(writeContentBean.getQna_contents()); //게시글 내용

		writeQnAContentBean.setUser_nickname(loginUserBean.getUser_nickname());
		writeQnAContentBean.setUser_email(loginUserBean.getUser_email());
		qnaBoardDao.addQnAContentInfo(writeQnAContentBean);

	}

	// ------------------------------페이징----------------------------
	public List<QnAContentBean> getQnAContentList(int page) {
		// RowBounds : (start, end)
		/*
		 * page 1 - 1 -> 0 + 9 = 9 pag2 2 - 1 -> 10 + 9 = 19 page 3 -1 -> 20 +9 = 29
		 */
		int start = (page - 1) * page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);

		return qnaBoardDao.getQnAContentList(rowBounds);
	}

	// ----------------카운터링빈
	public QnAPageBean getQnAContentCnt(int currentPage) {
		// 전체글의 갯수
		int content_cnt = qnaBoardDao.getQnAContentCnt();

		QnAPageBean qnaPageBean = new QnAPageBean(content_cnt, currentPage, page_listcnt, page_paginationcnt);

		return qnaPageBean;
	}

	public QnAContentBean getQnAContentInfo(int qna_num) {

		return qnaBoardDao.getQnAContentInfo(qna_num);

	}

	public void modifyQnAContentBean(QnAContentBean modifyQnAContentBean) {

		qnaBoardDao.modifyQnAContentBean(modifyQnAContentBean);

	}

	public void deleteQnAContentInfo(int qna_num) {

		qnaBoardDao.deleteQnAContentInfo(qna_num);

	}

	public List<ProductBean> getProductList() {

		return qnaBoardDao.getProductList();

	}

}
