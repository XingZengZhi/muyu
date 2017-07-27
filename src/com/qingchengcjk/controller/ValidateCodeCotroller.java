package com.qingchengcjk.controller;

import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qingchengcjk.util.VarifyCodeUtils;

@Controller
public class ValidateCodeCotroller {
	@RequestMapping("/checkcode")
	public void checkCode(HttpServletRequest request, HttpServletResponse response){
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		response.setContentType("image/jpg");
		
		VarifyCodeUtils code = VarifyCodeUtils.Instance();
		String str = code.getString();
		try {
			ImageIO.write(code.getImage(), "jpg", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
