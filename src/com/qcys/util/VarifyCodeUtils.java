package com.qcys.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;

public class VarifyCodeUtils {
	private BufferedImage image;// ͼ��  
    private String str;// ��֤��  
    private static char code[] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789".toCharArray();  
  
    public static final String SESSION_CODE_NAME="code";  
      
    private VarifyCodeUtils() {  
        init();// ��ʼ������  
    }  
  
    /* 
     * ȡ��RandomNumUtilʵ�� 
     */  
    public static VarifyCodeUtils Instance() {  
        return new VarifyCodeUtils();  
    }  
  
    /* 
     * ȡ����֤��ͼƬ 
     */  
    public BufferedImage getImage() {  
        return this.image;  
    }  
  
    /* 
     * ȡ��ͼƬ����֤�� 
     */  
    public String getString() {  
        return this.str;  
    }  
  
    private void init() {  
        // ���ڴ��д���ͼ��  
        int width = 85, height = 20;  
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);  
        // ��ȡͼ��������  
        Graphics g = image.getGraphics();  
        // ���������  
        Random random = new Random();  
        // �趨����ɫ  
        g.setColor(getRandColor(200, 250));  
        g.fillRect(0, 0, width, height);  
        // �趨����  
        g.setFont(new Font("Times New Roman", Font.PLAIN, 18));  
        // �������155�������ߣ�ʹͼ���е���֤�벻�ױ���������̽�⵽  
        g.setColor(getRandColor(160, 200));  
        for (int i = 0; i < 155; i++) {  
            int x = random.nextInt(width);  
            int y = random.nextInt(height);  
            int xl = random.nextInt(12);  
            int yl = random.nextInt(12);  
            g.drawLine(x, y, x + xl, y + yl);  
        }  
        // ȡ�����������֤��(4λ����)  
        String sRand = "";  
        for (int i = 0; i < 4; i++) {  
            String rand = String.valueOf(code[random.nextInt(code.length)]);  
            sRand += rand;  
            // ����֤����ʾ��ͼ����  
            g.setColor(new Color(20 + random.nextInt(110), 20 + random.nextInt(110), 20 + random.nextInt(110)));  
            // ���ú�����������ɫ��ͬ����������Ϊ����̫�ӽ�������ֻ��ֱ������  
            g.drawString(rand, 13 * i + 6, 16);  
        }  
        // ��ֵ��֤��  
        this.str = sRand;  
  
        // ͼ����Ч  
        g.dispose();  
        // ByteArrayInputStream input = null;  
        // ByteArrayOutputStream output = new ByteArrayOutputStream();  
        // try {  
        // ImageOutputStream imageOut = ImageIO.createImageOutputStream(output);  
        // ImageIO.write(image, "JPEG", imageOut);  
        // imageOut.close();  
        // input = new ByteArrayInputStream(output.toByteArray());  
        // } catch (Exception e) {  
        // System.out.println("��֤��ͼƬ�������ִ���" + e.toString());  
        // }  
        // this.image = input  
        this.image = image;/* ��ֵͼ�� */  
    }  
  
    /* 
     * ������Χ��������ɫ 
     */  
    private Color getRandColor(int fc, int bc) {  
        Random random = new Random();  
        if (fc > 255)  
            fc = 255;  
        if (bc > 255)  
            bc = 255;  
        int r = fc + random.nextInt(bc - fc);  
        int g = fc + random.nextInt(bc - fc);  
        int b = fc + random.nextInt(bc - fc);  
        return new Color(r, g, b);  
    }
}
