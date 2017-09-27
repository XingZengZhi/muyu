package com.qcys.controller;

import com.qcys.pojo.Local;
import com.qcys.service.LocalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/pages")
public class PageController {
	@Autowired
	private LocalService localService;

	@RequestMapping("/yuii")
	public String pageYuii(HttpServletRequest request){
		List<Local> locals = localService.getLocalList();
		request.setAttribute("locals", locals);
		return "yuii";
	}

	@RequestMapping("/yuiiadd")
	public String pageYuiiAdd(){
		return "yuiiadd";
	}

	@RequestMapping("/addLocal")
	public String pageAddLocal(Local local){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String currentTime = simpleDateFormat.format(date);
		local.setReleaseTime(currentTime);
		localService.insertLocal(local);
		return "redirect:yuiiadd";
	}

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
	@RequestMapping("/ht-login")
	public String htLogin(){
		return "ht_login";
	}
	@RequestMapping("/ht-index")
	public String htIndex(){
		return "ht_index";
	}
	@RequestMapping("/preLogin/personal")
	public String pagePersonal(){return "personal";}
}
