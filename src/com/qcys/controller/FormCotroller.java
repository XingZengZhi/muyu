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
	public String loginForm(HttpServletRequest request, HttpServletResponse response) throws IOException{
		//获得验证码
		String k = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
		System.out.println(k);
		String r = request.getParameter("r");
		response.setCharacterEncoding("UTF-8");
		if(k.equals(r)){
			//验证成功，执行用户登录
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
}