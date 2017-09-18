package com.qcys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qcys.mapper.UserMapper;
import com.qcys.pojo.User;
import com.qcys.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> getUserList() {
		List<User> users = userMapper.getUserList();
		return users;
	}

	@Override
	public User UserLogin(String userPhone, String passWord) {
		return userMapper.UserLogin(userPhone, passWord);
	}

	@Override
	public User FindUserById(String userid) {
		return userMapper.FindUserById(userid);
	}

	@Override
	public User FindUserByPhone(String userphone) {
		return userMapper.FindUserByPhone(userphone);
	}

	@Override
	public void UserInsert(User user) {
		userMapper.UserInsert(user);
	}

	@Override
	public String FindUserMail(String userName) {
		return userMapper.FindUserMail(userName);
	}

	@Override
	public void SettingHeader(String headerSrc, String userid) {
		userMapper.SettingHeader(headerSrc, userid);
	}

	@Override
	public void SettingNickName(String nickName, String userid) {
		userMapper.SettingNickName(nickName, userid);
	}

	@Override
	public void SettingPassword(String password, String userphone) {
		userMapper.SettingPassword(password, userphone);
	}

}
