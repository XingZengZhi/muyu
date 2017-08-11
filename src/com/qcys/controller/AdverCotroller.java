package com.qcys.controller;

import com.qcys.pojo.Adver;
import com.qcys.service.AdverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class AdverCotroller {
    @Autowired
    private AdverService adverService;
    @RequestMapping("addAdver")
    public void addAdver(Adver adver, @RequestParam("imageFiles") MultipartFile[] imageFiles, HttpServletRequest request){
        String imageUploadPath = request.getRealPath(File.separatorChar + "static" + File.separatorChar + "adverImage");
        String imageName = "";
        String newFileName = "";
        File ImageFile = null;
        adverService.addAdver(adver);
        System.out.println(imageFiles.length);
        for(int i = 0;i<imageFiles.length;i++){
            imageName = imageFiles[i].getOriginalFilename();
            System.out.println(imageName);
            newFileName = UUID.randomUUID().toString() + imageName.substring(imageName.lastIndexOf("."));
            ImageFile = new File(imageUploadPath + File.separatorChar + newFileName);
            if(!ImageFile.exists()){
                ImageFile.mkdirs();
            }
            try {
                imageFiles[i].transferTo(ImageFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
