package com.qcys.controller;

import com.qcys.pojo.User;
import com.qcys.service.UserService;
import com.qcys.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
}
