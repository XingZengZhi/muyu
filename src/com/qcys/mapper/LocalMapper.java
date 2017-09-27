package com.qcys.mapper;

import com.qcys.pojo.Local;

import java.util.List;

/**
 * Created by 94404 on 2017/9/27.
 */
public interface LocalMapper {
    List<Local> getLocalList();
    void insertLocal(Local local);
}
