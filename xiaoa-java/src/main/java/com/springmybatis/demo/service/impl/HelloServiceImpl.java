package com.springmybatis.demo.service.impl;

import com.springmybatis.demo.mapper.HelloMapper;
import com.springmybatis.demo.service.HelloService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Map;

/**
 * @author ChenCL 2020-01-10 15:52
 */
@Service
public class HelloServiceImpl implements HelloService {

    @Resource
    private HelloMapper helloMapper;

    @Override
    public Map<String, Object> getUserInfo(Integer id) {
        return helloMapper.getUserInfo(id);
    }
}
