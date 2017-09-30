package com.qcys.controller;


import com.google.gson.Gson;
import com.qcys.pojo.Local;
import com.qcys.service.LocalService;
import com.qcys.service.impl.LocalServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.List;

/**
 * 实时推送消息：
 * 1.推送任务列表消息
 */
@ServerEndpoint("/WebSocket")
public class SocketController {
    public void SocketController(){}

    @OnMessage
    public void onMessage(String message, Session session)
    throws IOException, InterruptedException {
        //接收到的信息
        System.out.println("Received" + message);
        session.getBasicRemote().sendText("数据");
    }

    @OnOpen
    public void onOpen(){
        System.out.println("客户端连接了！");
    }

    @OnClose
    public void onClose(){
        System.out.println("客户端连接关闭！");
    }

}
