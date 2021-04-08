package kr.co.starrysky.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import kr.co.starrysky.beans.ProductBean;
import kr.co.starrysky.beans.QnAContentBean;

public interface QnABoardMapper {

	@SelectKey(statement = "select qna_seq.nextval from dual", keyProperty = "qna_num", before = true, resultType = int.class)
	
	// 글 작성하면 넣어주는 메소드
	@Insert("insert into qna_table(qna_num, product_id, qna_subject, qna_contents, user_nickname, user_email, qna_date, " 
			+ "ref, re_step, re_level, readcount) "
			+ "values (#{qna_num}, #{product_id}, #{qna_subject}, #{qna_contents}, #{user_nickname,jdbcType=VARCHAR}, #{user_email,jdbcType=VARCHAR}, sysdate, "
			+ "#{ref}, #{re_step}, #{re_level}, #{readcount})")
	void addQnAContentInfo(QnAContentBean writeQnAContentBean);
	
	// 글 목록 읽어오는 메소드
	@Select("select a1.qna_num, a1.qna_subject, a1.product_id, a2.user_nickname, to_char(a1.qna_date, 'yyyy-mm-dd') as qna_date "
			+ "from qna_table a1, user_table a2 "
			+ "where a1.user_nickname=a2.user_nickname "
			+ "order by a1.qna_num desc")
	List<QnAContentBean> getQnAContentList(RowBounds rowBounds);
	
	// 글 읽어오는 메소드
	@Select("select a2.user_nickname as user_nickname, a1.qna_num, a1.user_email, to_char(a1.qna_date, 'yyyy-mm-dd') as qna_date, " +
			"a1.qna_subject, a1.qna_contents, a1.user_nickname, a1.product_id " +
			"from qna_table a1, user_table a2 " +
			"where a1.user_nickname=a2.user_nickname and a1.qna_num=${qna_num}")
	QnAContentBean getQnAContentInfo(int qna_num);
	
	// 수정한 글 올려주는 메소드
	@Update("update qna_table " +
			"set qna_subject = #{qna_subject}, qna_contents = #{qna_contents} " +
			"where qna_num = #{qna_num}")
	void modifyQnAContentBean(QnAContentBean modifyQnAContentBean);
	
	// 글 삭제 해주는 메소드
	@Delete("delete from qna_table where qna_num = #{qna_num}")
	void deleteQnAContentInfo(int qna_num);
	
	// 페이징 처리해주는 메소드
	@Select("select count(*) from qna_table")
	int getQnAContentCnt();
	
	// 상품명을 받아오는 메소드
	@Select("select product_id, product_name from product_list")
	List<ProductBean> getProductList();
	
}
