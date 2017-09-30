package com.qcys.controller;

import com.qcys.pojo.Local;
import com.qcys.service.LocalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by 94404 on 2017/9/28.
 */
@Controller
@RequestMapping("/Local")
public class LocalController {
    @Autowired
    private LocalService localService;

    @RequestMapping("/yuii")
    public String pageYuii(){
        return "yuii";
    }

    @RequestMapping("/yuiiadd")
    public String pageYuiiAdd(){
        return "yuiiadd";
    }

    @RequestMapping("/yuiishow")
    public @ResponseBody List<Local> pageYuii(HttpServletRequest request){
        List<Local> locals = localService.getLocalList();
        return locals;
    }

    @RequestMapping("/addLocal")
    public String pageAddLocal(Local local){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        String currentTime = simpleDateFormat.format(date);
        local.setReleaseTime(currentTime);
        localService.insertLocal(local);
        return "redirect:yuiiadd";
    }
}
