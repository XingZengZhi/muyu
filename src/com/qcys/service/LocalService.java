package com.qcys.service;

import com.qcys.pojo.Local;

import java.util.List;

public interface LocalService {
    List<Local> getLocalList();
    void insertLocal(Local local);
}
