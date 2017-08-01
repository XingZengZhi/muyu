package com.qcys.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qcys.pojo.User;
import com.qcys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.code.kaptcha.Constants;

@Controller
@RequestMapping("/forms")
public class FormCotroller {
	@Autowired
	private UserService userService;
	@RequestMapping("/loginForm")
	public String UserLogin(HttpServletRequest request) throws IOException{
		String k = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
		String r = request.getParameter("r");
		if(k.equals(r)){
			String account = request.getParameter("account");
			String password = request.getParameter("password");
			User user = userService.UserLogin(account, password);
			if(user != null){
				HttpSession session = request.getSession();
				session.setAttribute("luser", user);
				System.out.print(user.getUserAccount());
			}else{
				request.setAttribute("fail", "用户名或密码错误");
				return "login";
			}
		}else{
			request.setAttribute("fail", "验证码错误");
			return "login";
		}
		return "index";
	}
	@RequestMapping("/registerForm")
	public String UserRegister(){

		return "login";
	}
}
