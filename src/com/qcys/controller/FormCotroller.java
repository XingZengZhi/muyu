package com.qcys.controller;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qcys.pojo.User;
import com.qcys.service.UserService;
import com.qcys.util.MD5Utils;
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
		request.setCharacterEncoding("UTF-8");
		String k = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
		String r = request.getParameter("r");
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		if(k.equals(r)){
			User user = userService.UserLogin(account, MD5Utils.md5(password));
			if(user != null){
				HttpSession session = request.getSession();
				session.setAttribute("LoginUser", user);
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
	public String UserRegister(HttpServletRequest request, HttpServletResponse response){
		String password = request.getParameter("password");
		String phone = request.getParameter("telNum");
		User user = new User();
		user.setUserSex('1');
		user.setUserPassword(MD5Utils.md5(password));
		user.setUserPhone(phone);
		try{
			userService.UserInsert(user);
			Cookie insertTip = new Cookie("addTip", "1");
			insertTip.setPath("/");
			insertTip.setMaxAge(3600);
			response.addCookie(insertTip);
		}catch (Exception e){
			e.printStackTrace();
		}
		return "redirect:/pages/login";
	}
}
