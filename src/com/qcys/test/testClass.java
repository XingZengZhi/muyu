package com.qcys.test;

import org.junit.Test;

/**
 * Created by 94404 on 2017/8/12.
 */
public class testClass {
    @Test
    public void pppp(){
        StringBuffer stringBuffer = new StringBuffer(2);
        stringBuffer.append("123.jpg");
        stringBuffer.append("456.jpg");
        System.out.println(stringBuffer.toString());
    }
}
