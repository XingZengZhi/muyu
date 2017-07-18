package com.qingchengcjk.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qingchengcjk.mapper.UserMapper;
import com.qingchengcjk.pojo.User;
import com.qingchengcjk.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> getUserList() {
		List<User> users = userMapper.getUserList();
		return users;
	}

}
