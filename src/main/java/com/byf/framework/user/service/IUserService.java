package com.byf.framework.user.service;

import java.util.List;

import com.byf.framework.user.model.User;

public interface IUserService {

	public User getUserById(String id);
	
	public List<User> getAll();
}
