package com.qcys.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qcys.pojo.User;
import com.qcys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class VideoUpload {
	@Autowired
	private UserService userService;
	@RequestMapping("/upload")
	public void videoupload(HttpServletRequest request, HttpServletResponse response,
			MultipartFile videoFile){
		String uploadPath = request.getRealPath(File.separatorChar + "static" + File.separatorChar + "video");
		String video_name = videoFile.getOriginalFilename();
		String video_newName = UUID.randomUUID().toString() + video_name.substring(video_name.lastIndexOf("."));
		System.out.println(uploadPath);
		File uploadVideo = new File(uploadPath + File.separatorChar + video_newName);
		if(!uploadVideo.exists()){
			uploadVideo.mkdirs();
		}
		try {
			videoFile.transferTo(uploadVideo);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		String staticPath = uploadPath.substring(uploadPath.indexOf("static"));
		try {
			response.getWriter().print(staticPath + '/' + video_newName);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/uploadHeader")
	public void headerUpload(HttpServletRequest request, HttpServletResponse response,
							 MultipartFile headerFile){
		String userphone = request.getParameter("userphone");
		String headerName = headerFile.getOriginalFilename();
		String newHeaderName = UUID.randomUUID().toString() + headerName.substring(headerName.lastIndexOf("."));
		String uploadPath = request.getRealPath(File.separatorChar + "static" +
													File.separatorChar + "img" +
														File.separatorChar + "UserHeaderImage");
		File headerFileUpload = new File(uploadPath + File.separatorChar + newHeaderName);
		if(!headerFileUpload.exists()){
			headerFileUpload.mkdirs();
		}
		try {
			headerFile.transferTo(headerFileUpload); //刷新到磁盘
			response.getWriter().print(newHeaderName);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		userService.SettingHeader(newHeaderName, userphone);
		HttpSession session = request.getSession();
		if(session.getAttribute("LoginUser") != null){
			User user = (User) session.getAttribute("LoginUser");
			user.setUserHeader(newHeaderName);
			session.setAttribute("LoginUser", user);
		}
	}
	
}
