package com.byf.framework.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.byf.framework.user.dao.UserMapper;
import com.byf.framework.user.model.User;
import com.byf.framework.user.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	
	private UserMapper userMapper;

	public UserMapper getUserMapper() {
		return userMapper;
	}
	
	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
    
	public User getUserById(String id) {
		return userMapper.selectByPrimaryKey(id);
	}

	public List<User> getAll() {
		return userMapper.getAll();
		 
	}

}
