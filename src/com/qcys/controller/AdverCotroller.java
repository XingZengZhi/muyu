package com.qcys.controller;

import com.qcys.pojo.Adver;
import com.qcys.service.AdverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdverCotroller {
    @Autowired
    private AdverService adverService;
    @RequestMapping("addAdver")
    public void addAdver(Adver adver){
        adverService.addAdver(adver);
    }
}
