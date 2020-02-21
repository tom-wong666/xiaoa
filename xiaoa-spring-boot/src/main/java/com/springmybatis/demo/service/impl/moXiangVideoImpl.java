package com.springmybatis.demo.service.impl;

import com.springmybatis.demo.mapper.moXiangVideoMapper;
import com.springmybatis.demo.service.moXiangVideoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

/**
 * @author ChenCL 2020-01-10 15:52
 */
@Service
public class moXiangVideoImpl implements moXiangVideoService {

    @Resource
    private moXiangVideoMapper moXiangVideoMapperInstance;

    @Override
    public Map<String, Object> getVideoInfo() {
        return moXiangVideoMapperInstance.getVideoInfo();
    }
}