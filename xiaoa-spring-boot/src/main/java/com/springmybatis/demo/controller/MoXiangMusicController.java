package com.springmybatis.demo.controller;
import com.springmybatis.demo.service.MoXiangMusicService;
import com.springmybatis.demo.service.MoXiangVideoService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@RestController
public class MoXiangMusicController {
    @Resource
    private MoXiangMusicService moXiangMusicService;
    @CrossOrigin(origins = {"*","null"},allowCredentials="true")
    @GetMapping("/getMusicInfo")
    public List<Map<String, Object>> getVideoInfo () {
        System.out.println(moXiangMusicService.getMusicInfo());
        return moXiangMusicService.getMusicInfo();
    }
}
