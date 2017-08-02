package com.qcys.serviceimpl;

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
	public User UserLogin(String userAccount, String passWord) {
		return userMapper.UserLogin(userAccount, passWord);
	}

	@Override
	public void UserInsert(User user) {
		userMapper.UserInsert(user);
	}

}
