package com.springmybatis.demo.service;

import java.util.Map;

/**
 * @author chenchanglin
 */
public interface HelloService {

    /**
     * 查询用户信息
     *
     * @param id 用户ID
     * @return Map
     */
    Map<String, Object> getUserInfo(Integer id);

}
