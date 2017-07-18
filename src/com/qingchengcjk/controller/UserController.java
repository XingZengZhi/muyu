package com.qingchengcjk.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qingchengcjk.pojo.User;
import com.qingchengcjk.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/userlist")
	public String getUserList(Model model){
		List<User> users = userService.getUserList();
		model.addAttribute("users", users);
		return "test";
	}
}
