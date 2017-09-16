package com.qcys.service;

import java.util.List;

import com.qcys.pojo.User;

public interface UserService {
	List<User> getUserList();
	User UserLogin(String userAccount, String passWord);
	void UserInsert(User user);
	String FindUserMail(String userName);
	void SettingHeader(String headerSrc, String userid);
}
