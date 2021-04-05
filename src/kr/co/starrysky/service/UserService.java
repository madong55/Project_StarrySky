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
		/* userDao.addShoppingCartInfo(joinUserBean); */
	}
	
	public void getLoginUserInfo(UserBean tempLoginUserBean) {
		UserBean tempLoginUserBean2 = userDao.getLoginUserInfo(tempLoginUserBean);
		if(tempLoginUserBean2 != null) {
			loginUserBean.setUser_email(tempLoginUserBean2.getUser_email());
			loginUserBean.setUser_name(tempLoginUserBean2.getUser_name());
			loginUserBean.setUser_nickname(tempLoginUserBean2.getUser_nickname());
			loginUserBean.setUser_phone_number(tempLoginUserBean2.getUser_phone_number());
			loginUserBean.setUserLogin(true);
		}
		
	}
	
	public void getModifyUserInfo(UserBean modifyUserBean) {
		UserBean tempModifyUserBean = userDao.getModifyUserInfo(loginUserBean.getUser_email());
		
		modifyUserBean.setUser_name(tempModifyUserBean.getUser_name());
		modifyUserBean.setUser_email(tempModifyUserBean.getUser_email());
		modifyUserBean.setUser_nickname(tempModifyUserBean.getUser_nickname());
		modifyUserBean.setUser_phone_number(tempModifyUserBean.getUser_phone_number());
	}
	
	public void modifyUserInfo(UserBean modifyUserBean) {
		modifyUserBean.setUser_email(loginUserBean.getUser_email());
		
		userDao.modifyUserInfo(modifyUserBean);
	}
}
