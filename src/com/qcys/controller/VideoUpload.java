package com.qcys.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class VideoUpload {
	@RequestMapping("/upload")
	public String videoupload(HttpServletRequest request, 
			MultipartFile videoFile){
		String uploadPath = request.getRealPath(File.separatorChar + "static" + File.separatorChar + "video");
		String video_name = videoFile.getOriginalFilename();
		String video_newName = UUID.randomUUID().toString() + video_name.substring(video_name.lastIndexOf("."));
		System.out.println();
		File uploadVideo = new File(uploadPath + File.separatorChar + video_newName);
		if(!uploadVideo.exists()){
			uploadVideo.mkdirs();
		}
		try {
			videoFile.transferTo(uploadVideo);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return "uploadvideo";
	}
	
}
