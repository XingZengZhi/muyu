package com.qcys.service.impl;

import com.qcys.mapper.AdverMapper;
import com.qcys.pojo.Adver;
import com.qcys.service.AdverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdverServiceImpl implements AdverService {
    @Autowired
    private AdverMapper adverMapper;

    @Override
    public void addAdver(Adver adver) {
        adverMapper.addAdver(adver);
    }
}
