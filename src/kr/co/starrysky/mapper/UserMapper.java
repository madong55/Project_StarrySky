package kr.co.starrysky.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.co.starrysky.beans.UserBean;
public interface UserMapper {

		@Select("select user_name "
				+ "from user_table "
				+ "where user_email= #{user_email}")
		String checkUserIdExist(String user_email);
		
		@Insert("insert into user_table(user_name, user_nickname, user_email, user_pw) "
				+ "values(#{user_name}, #{user_nickname}, #{user_email}, #{user_pw})")
		void addUserInfo(UserBean joinUserBean);
	}

