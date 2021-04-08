package kr.co.starrysky.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.QnAContentBean;
import kr.co.starrysky.mapper.QnABoardMapper;

@Repository
public class QnABoardDao {

	@Autowired
	private QnABoardMapper qnaBoardMapper;

	public void addQnAContentInfo(QnAContentBean writeQnAContentBean) {
		// 리턴값없으니 여기서 sql문 결과물 보면됨.
		qnaBoardMapper.addQnAContentInfo(writeQnAContentBean);
	}

	public List<QnAContentBean> getQnAContentList(RowBounds rowBounds) {
		
		return qnaBoardMapper.getQnAContentList(rowBounds);
	}
	
	public QnAContentBean getQnAContentInfo(int qna_num) {
		
		return qnaBoardMapper.getQnAContentInfo(qna_num);
		
	}
	
	public void modifyQnAContentBean(QnAContentBean modifyQnAContentBean) {
		
		qnaBoardMapper.modifyQnAContentBean(modifyQnAContentBean);
		
	}
	
	public void deleteQnAContentInfo(int qna_num) {
		
		qnaBoardMapper.deleteQnAContentInfo(qna_num);
	
	}
	
	public int getQnAContentCnt() {
		
		return qnaBoardMapper.getQnAContentCnt();
		
	}
	
	public List<ProductBean> getProductList() {
		
		return qnaBoardMapper.getProductList();
		
	}
	
}
