package com.springmybatis.demo.controller;

import com.springmybatis.demo.service.HelloService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Map;

/**
 * @author ChenCL 2020-01-10 15:38
 */
@RestController
public class HelloController {

    @Resource
    private HelloService helloService;

    @CrossOrigin(origins = {"*","null"},allowCredentials="true")
    @GetMapping("/")
    public Map<String, Object> hello (Integer id) {
        return helloService.getUserInfo(id);
    }

}
