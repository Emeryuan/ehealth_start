package com.byf.framework.user.dao;

import java.util.List;

import com.byf.framework.user.model.User;

public interface UserMapper2 {
   // int deleteByPrimaryKey(String id);
    User selectByPrimaryKey(String id);

}