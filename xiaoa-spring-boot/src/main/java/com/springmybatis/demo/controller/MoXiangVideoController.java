package com.springmybatis.demo.controller;
import com.springmybatis.demo.service.MoXiangVideoService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@RestController
public class MoXiangVideoController {
    @Resource
    private MoXiangVideoService moXiangVideoServiceInstance;
    @CrossOrigin(origins = {"*","null"},allowCredentials="true")
    @GetMapping("/getVideoInfo")
    public List<Map<String, Object>> getVideoInfo () {
        System.out.println(moXiangVideoServiceInstance.getVideoInfo());
        return moXiangVideoServiceInstance.getVideoInfo();
    }
}
