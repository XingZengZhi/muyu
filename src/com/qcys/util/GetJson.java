package com.qcys.util;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

/**
 * Created by 94404 on 2017/9/26.
 */
public class GetJson {
    public static String getJsonFromFile(String path){
        String str = "";
        try {
            FileInputStream fileInputStream = new FileInputStream(path);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, "UTF-8"));
            String tempStr = null;
            while((tempStr = bufferedReader.readLine()) != null){
                str += tempStr;
            }
            bufferedReader.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return str;
    }
}
