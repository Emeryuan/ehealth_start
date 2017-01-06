package com.byf.framework.user.dao;

import java.util.List;

import com.byf.framework.user.model.LoginUser;


public interface LoginUserMapper {
   
    int insert(LoginUser record);
    int insertSelective(LoginUser record);
    LoginUser selectByPrimaryKey(String id);

}