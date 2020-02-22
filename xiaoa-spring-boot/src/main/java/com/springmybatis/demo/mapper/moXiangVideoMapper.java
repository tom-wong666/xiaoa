package com.springmybatis.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * @author chenchanglin
 */
@Mapper
public interface MoXiangVideoMapper {

    /**
     * 查询用户信息
     *
     * @return Map
     */
   List<Map<String, Object>> getVideoInfo();

}
