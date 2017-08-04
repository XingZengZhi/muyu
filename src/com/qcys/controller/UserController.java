package com.qcys.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qcys.pojo.User;
import com.qcys.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	@RequestMapping("/findMail")
	public void getUserMail(HttpServletRequest request, HttpServletResponse response){
		String userName = request.getParameter("userName");
		try {
			String mail = userService.FindUserMail(userName);
			response.getWriter().print(mail);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
