package com.springmybatis.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

/**
 * @author chenchanglin
 */
@Mapper
public interface HelloMapper {

    /**
     * 查询用户信息
     *
     * @param id 用户ID
     * @return Map
     */
   Map<String, Object> getUserInfo(Integer id);

}
