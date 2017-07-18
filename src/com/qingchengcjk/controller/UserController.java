package com.qingchengcjk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qingchengcjk.pojo.User;
import com.qingchengcjk.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/userlist")
	public ModelAndView getUserList(){
		List<User> users = userService.getUserList();
		ModelAndView model = new ModelAndView();
		model.addObject("users", users);
		System.out.println(users.get(0).getUserName());
		model.setViewName("test");
		return model;
	}
}
