package com.qingchengcjk.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.code.kaptcha.Constants;

@Controller
@RequestMapping("/forms")
public class FormCotroller {
	@RequestMapping("/loginForm")
	public void loginForm(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String k = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
		System.out.println(k);
		String r = request.getParameter("r");
		response.setCharacterEncoding("UTF-8");
		if(k.equals(r)){
			response.getWriter().write("success!");
		}else{
			response.getWriter().write("fail!");
		}
	}
}
