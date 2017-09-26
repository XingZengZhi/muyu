package com.qcys.test;


import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.qcys.pojo.Feek;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.List;

/**
 * Created by 94404 on 2017/8/12.
 */
public class testClass {
    public static String pppp(){
        String lastStr = "";
        try {
            FileInputStream fileInputStream = new FileInputStream("E:\\qingcheng\\qingchengcjk\\WebContent\\static\\JsonData\\feek.json");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, "UTF-8"));
            String tempStr = null;
            while((tempStr = bufferedReader.readLine()) != null){
                lastStr += tempStr;
            }
            bufferedReader.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return lastStr;
    }
    public static void main(String[] args){
        String json = pppp();
        Gson gson = new GsonBuilder().create();
        List<Feek> feeks = gson.fromJson(json, new TypeToken<List<Feek>>(){}.getType());
        for(Feek feek : feeks){
            System.out.println(feek.getData());
        }
    }


}
