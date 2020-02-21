package com.springmybatis.demo.controller;
import com.springmybatis.demo.service.moXiangVideoService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Map;

@RestController
public class moXiangVideoController {
    @Resource
    private moXiangVideoService moXiangVideoServiceInstance;
    @CrossOrigin(origins = {"*","null"},allowCredentials="true")
    @GetMapping("/getVideoInfo")
    public Map<String, Object> getVideoInfo () {
        System.out.println(moXiangVideoServiceInstance.getVideoInfo());
        return moXiangVideoServiceInstance.getVideoInfo();
    }
}
