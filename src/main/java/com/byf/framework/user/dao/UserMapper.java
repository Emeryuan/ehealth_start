package com.byf.framework.user.dao;

import java.util.List;

import com.byf.framework.user.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(String id);
    int insert(User record);
    int insertSelective(User record);
    User selectByPrimaryKey(String id);
    int updateByPrimaryKeySelective(User record);
    int updateByPrimaryKey(User record);
    List<User> getAll();
}