package com.qingchengcjk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class testController {
	@RequestMapping("/test")
	public ModelAndView test(){
		ModelAndView model = new ModelAndView();
		model.addObject("test", "≤‚ ‘");
		model.setViewName("test");
		return model;
	} 
}
