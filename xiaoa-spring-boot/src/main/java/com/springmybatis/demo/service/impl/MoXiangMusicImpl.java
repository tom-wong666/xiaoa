package com.springmybatis.demo.service.impl;

import com.springmybatis.demo.mapper.MoXiangMusicMapper;
import com.springmybatis.demo.service.MoXiangMusicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author ChenCL 2020-01-10 15:52
 */
@Service
public class MoXiangMusicImpl implements MoXiangMusicService {

    @Resource
    private MoXiangMusicMapper moXiangMusicMapper;

    @Override
    public List<Map<String, Object>> getMusicInfo() {
        return moXiangMusicMapper.getMusicInfo();
    }
}