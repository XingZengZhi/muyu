package com.qcys.service.impl;

import com.qcys.mapper.LocalMapper;
import com.qcys.pojo.Local;
import com.qcys.service.LocalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LocalServiceImpl implements LocalService {
    @Autowired
    private LocalMapper localMapper;

    @Override
    public List<Local> getLocalList() {
        return localMapper.getLocalList();
    }

    @Override
    public void insertLocal(Local local) {
        localMapper.insertLocal(local);
    }
}
