package kr.co.starrysky.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.starrysky.beans.UserBean;
public interface UserMapper {

		@Select("select user_name "
				+ "from user_table "
				+ "where user_email= #{user_email}")
		String checkUserIdExist(String user_email);
		
		@Insert("insert into user_table(user_name, user_nickname, user_email, user_pw, user_phone_number) "
				+ "values(#{user_name}, #{user_nickname}, #{user_email}, #{user_pw}, #{user_phone_number})")
		void addUserInfo(UserBean joinUserBean);
		
		/*
		 * @Insert("insert into shopping_cart (user_email) values (#{user_email})") void
		 * addShoppingCartInfo(UserBean joinUserBean);
		 */
		
		@Select("select user_name, user_email, user_nickname, user_phone_number "
				+ "from user_table "
				+ "where user_email=#{user_email} and user_pw=#{user_pw}")
		UserBean getLoginUserInfo(UserBean tempLoginUserBean);
		
		@Select("select user_name, user_email, user_nickname, user_phone_number "
				+ "from user_table "
				+ "where user_email=#{user_email}")
		UserBean getModifyUserInfo(String user_email);
		
		@Update("update user_table set user_pw=#{user_pw}, user_nickname=#{user_nickname}"
				+ "where user_email=#{user_email} ")
		void modifyUserInfo(UserBean modifyUserBean);
	}

