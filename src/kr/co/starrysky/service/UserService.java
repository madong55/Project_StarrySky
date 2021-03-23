package kr.co.starrysky.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.starrysky.beans.UserBean;
import kr.co.starrysky.dao.UserDao;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
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
	
	public void getLoginUserInfo(UserBean tempLoginUserBean) {
		UserBean tempLoginUserBean2 = userDao.getLoginUserInfo(tempLoginUserBean);
		
		if(tempLoginUserBean2 != null) {
			loginUserBean.setUser_name(tempLoginUserBean2.getUser_name());
			loginUserBean.setUserLogin(true);
		}
	}
}
