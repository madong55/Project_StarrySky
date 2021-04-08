package kr.co.starrysky.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.starrysky.beans.PayBean;
import kr.co.starrysky.mapper.PayMapper;

@Repository
public class PayDao {

	@Autowired //mapper ����
	private PayMapper payMapper;
		
	
	//////////////
	public List<PayBean> getCardList(String id){
		return payMapper.getCardList(id);
	}
	
	public List<PayBean> getPayAll(){
		return payMapper.getPayAll();
	}
	

}
