package com.qcys.controller;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import com.qcys.util.MD5Utils;
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
		try {
			userService.SettingNickName(nickName, userid);
			response.getWriter().print("1");
		} catch (IOException e) {
			e.printStackTrace();
		}
		User user = userService.FindUserById(userid);
		request.getSession().setAttribute("LoginUser", user);
	}
	@RequestMapping("/NewPass")
	public void NewPass(HttpServletRequest request, HttpServletResponse response){
		String pass = request.getParameter("NewPass");
		String phone = request.getParameter("userphone");
		try {
			userService.SettingPassword(MD5Utils.md5(pass), phone);
			response.getWriter().print(1);
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	@RequestMapping("/NewEmail")
	public void NewEmail(HttpServletRequest request, HttpServletResponse response){
		String email = request.getParameter("email");
		String validate = UUID.randomUUID().toString().substring(0, 6);
		System.out.println(validate + " " + email);
		SendMail sendMail = new SendMail(email, validate);
		try {
			sendMail.StartSend();
			response.getWriter().print(validate);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/SettingNewEmail")
	public void SettingNewEmail(HttpServletRequest request,
								HttpServletResponse response) throws IOException {
		String NewEmail = request.getParameter("NewEmail");
		String phone = request.getParameter("phone");
		System.out.println(NewEmail + " " + phone);
		userService.SettingEmail(NewEmail, phone);
		response.getWriter().print(1);
	}
	@RequestMapping("/SettingNewPhone")
	public void SettingNewPhone(HttpServletRequest request,
								HttpServletResponse response) throws IOException {
		String NewPhone = request.getParameter("NewPhone");
		String phone = request.getParameter("phone");
		System.out.println(NewPhone + " " + phone);
		userService.SettingPhone(NewPhone, phone);
		response.getWriter().print(1);
	}
}
