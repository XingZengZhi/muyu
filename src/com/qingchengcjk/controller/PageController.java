package com.qingchengcjk.controller;

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
}
