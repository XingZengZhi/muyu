package com.qcys.service;

import java.util.List;

import com.qcys.pojo.User;

public interface UserService {
	List<User> getUserList();
	User UserLogin(String userPhone, String passWord);
	User FindUserById(String userid);
	User FindUserByPhone(String userphone);
	String FindUserMail(String userName);
	void UserInsert(User user);
	void SettingHeader(String headerSrc, String userid);
	void SettingNickName(String nickName, String userid);
	void SettingPassword(String password, String userphone);
}
