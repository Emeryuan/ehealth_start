package com.byf.framework.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.byf.framework.user.dao.UserMapper2;
import com.byf.framework.user.model.User;
import com.byf.framework.user.service.IUserService2;

@Service("userService2")
public class UserServiceImpl2 implements IUserService2 {
	
	private UserMapper2 userMapper;

	public UserMapper2 getUserMapper() {
		return userMapper;
	}
	
	@Autowired
	public void setUserMapper2(UserMapper2 userMapper) {
		this.userMapper = userMapper;
	}
    
	public User getUserById(String id) {
		return userMapper.selectByPrimaryKey(id);
	}
}
