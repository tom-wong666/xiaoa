package com.springmybatis.demo.service.impl;

import com.springmybatis.demo.mapper.MoXiangVideoMapper;
import com.springmybatis.demo.service.MoXiangVideoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author ChenCL 2020-01-10 15:52
 */
@Service
public class MoXiangVideoImpl implements MoXiangVideoService {

    @Resource
    private MoXiangVideoMapper moXiangVideoMapperInstance;

    @Override
    public List<Map<String, Object>> getVideoInfo() {
        return moXiangVideoMapperInstance.getVideoInfo();
    }
}