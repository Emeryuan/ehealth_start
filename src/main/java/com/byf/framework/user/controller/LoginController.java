package com.byf.framework.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.byf.framework.user.model.LoginUser;
import com.byf.framework.user.service.UserIsexistService;


/** 
 * 登录认证的控制器 
 */
@Controller
@RequestMapping("/login")
public class LoginController {
	private UserIsexistService userIsexistService;
	@Autowired
	public void UserIsexistService(UserIsexistService userIsexistService) {
		this.userIsexistService = userIsexistService;
	}
	@RequestMapping("/{id}")
	public String getUser(@PathVariable String id,HttpServletRequest request){
		LoginUser u = userIsexistService.getUser(id);
		System.out.println("进入了logincotroller方法");
		request.setAttribute("user1", u);
		return "index";
	}
}
