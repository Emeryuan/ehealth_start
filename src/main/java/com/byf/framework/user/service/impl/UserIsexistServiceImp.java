package com.byf.framework.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.byf.framework.user.dao.LoginUserMapper;
import com.byf.framework.user.model.LoginUser;
import com.byf.framework.user.service.UserIsexistService;


@Service("userIsexistService")
public class UserIsexistServiceImp implements UserIsexistService {

	private LoginUserMapper userMapper;

	public LoginUserMapper getUserMapper() {
		return userMapper;
	}
	
	@Autowired
	public void setUserMapper(LoginUserMapper userMapper) {
		this.userMapper = userMapper;
	}
    
	public LoginUser getUser(String id) {
		return userMapper.selectByPrimaryKey(id);
	}

}
