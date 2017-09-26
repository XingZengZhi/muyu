package com.qcys.controller;

import com.qcys.pojo.User;
import com.qcys.service.UserService;
import com.qcys.util.GetJson;
import com.qcys.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class AppController {
    @Autowired
    private UserService userService;
    @RequestMapping("/login/{userphone}-{password}")
    public void AppLogin(@PathVariable String userphone,
                         @PathVariable String password,
                         HttpServletResponse response){
        try {
            User user1 = userService.FindUserByPhone(userphone);
            if(user1 == null){
                response.getWriter().print("-1");
            }else{
                User user2 = userService.UserLogin(userphone, MD5Utils.md5(password));
                if(user2 == null){
                    response.getWriter().print("0");
                }else{
                    response.getWriter().print("1");
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }

    }
    @RequestMapping("/foundUser/{userphone}")
    public @ResponseBody User AppFoundUser(@PathVariable String userphone){
        User user = userService.FindUserByPhone(userphone);
        return user;
    }
    @RequestMapping("/setPassword/{password}-{userphone}")
    public void setPassword(@PathVariable String password,
                            @PathVariable String userphone,
                            HttpServletResponse response){
        try {
            userService.SettingPassword(MD5Utils.md5(password), userphone);
            response.getWriter().print(1);
        }catch (Exception e){
            try {
                response.getWriter().print(0);
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        }
    }
    @RequestMapping(value = "/updateUserHead/{userphone}", method = RequestMethod.POST)
    public void headerUpload(@PathVariable String userphone,
                             HttpServletRequest request,
                             HttpServletResponse response,
                             @RequestParam MultipartFile headerFile){
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
            response.getWriter().print(1);
        } catch (IllegalStateException | IOException e) {
            try {
                response.getWriter().print(0);
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
        }
        userService.SettingHeader(newHeaderName, userphone);
    }
    @RequestMapping(value = "/getFeekJson")
    public @ResponseBody void getFeekJson(HttpServletRequest request,
                                          HttpServletResponse response){
        String json = GetJson.getJsonFromFile(request.getRealPath(File.separatorChar + "static" +
                File.separatorChar + "JsonData" +
                File.separatorChar + "feek.json"));
        try {
            response.setCharacterEncoding("UTF-8");
            response.getWriter().print(json);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
