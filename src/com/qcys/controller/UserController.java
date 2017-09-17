package com.qcys.controller;

import java.io.IOException;
import java.util.List;

import com.qcys.util.SendMail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qcys.pojo.User;
import com.qcys.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			String mail = userService.FindUserMail(userName) == null ? "" : userService.FindUserMail(userName);
			System.out.println(mail);
			response.getWriter().print(mail);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/SendMail")
	public void sendUserMail(HttpServletRequest request, HttpServletResponse response)throws Exception{
		String email = request.getParameter("mail");
		String validate = request.getParameter("validate");
		System.out.println(email + " " + validate);
		try {
			SendMail sendMail = new SendMail(email, validate);
			sendMail.StartSend();
			HttpSession mailCodeSession = request.getSession();
			mailCodeSession.setAttribute("mailCode", validate);
			mailCodeSession.setMaxInactiveInterval(600);
			response.getWriter().print("send mail success.");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/ChangePass")
	public void changePass(HttpServletRequest request, HttpServletResponse response){
		String mailCode = request.getParameter("mailCode");
		HttpSession mailCodeSession = request.getSession();
		try {
			if(mailCode.equals(mailCodeSession.getAttribute("mailCode"))){
				response.getWriter().print("1");
			}else{
				response.getWriter().print("0");
			}
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	@RequestMapping("/UserExit")
	public String UserExit(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.setAttribute("LoginUser", null);
		return "redirect:/pages/index";
	}
	@RequestMapping("/NewNickName")
	public void NewNickName(HttpServletRequest request, HttpServletResponse response){
		String nickName = request.getParameter("NickName");
		String userid = request.getParameter("userid");
		System.out.println(nickName + " " + userid);
		try {
			userService.SettingNickName(nickName, userid);
			response.getWriter().print("1");
		} catch (IOException e) {
			e.printStackTrace();
		}
		User user = userService.FindUserById(userid);
		request.getSession().setAttribute("LoginUser", user);
	}
}
