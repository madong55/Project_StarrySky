package kr.co.starrysky.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.dao.UserDao;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public boolean checkUserIdExist(String user_email) {
		
		String user_name = userDao.checkUserIdExist(user_email);
		if(user_name == null) {
			
			return true;
		}else {
			return false;
		}
		
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		userDao.addUserInfo(joinUserBean);
	}
}
