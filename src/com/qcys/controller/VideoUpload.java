package com.qcys.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class VideoUpload {
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
		String headerName = headerFile.getOriginalFilename();
		try {
			response.getWriter().print(headerName);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
