package com.qcys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pages")
public class PageController {
	@RequestMapping("/index")
	public String pageIndex(){
		return "index";
	}
	@RequestMapping("/toufang")
	public String pageToufang(){
		return "toufang";
	}
	@RequestMapping("/aboutus")
	public String pageAboutus(){
		return "aboutus";
	}
	@RequestMapping("/information")
	public String pageInformation(){
		return "information";
	}
	@RequestMapping("/register")
	public String pageRegister(){
		return "register";
	}
	@RequestMapping("/works")
	public String pageWorks(){
		return "works";
	}
	@RequestMapping("/uploadvideo")
	public String pageUploadVideo(){
		return "uploadvideo";
	}
	@RequestMapping("/login")
	public String pageLogin(){
		return "login";
	}
}
