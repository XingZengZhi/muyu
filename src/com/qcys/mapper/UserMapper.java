package com.qcys.mapper;

import java.util.List;

import com.qcys.pojo.User;

public interface UserMapper {
	List<User> getUserList();
	User UserLogin(String userName, String passWord);
	void UserInsert(User user);
	String FindUserMail(String userName);
}
