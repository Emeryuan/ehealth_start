package com.byf.framework.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.byf.framework.user.model.User;
import com.byf.framework.user.service.IUserService;

@Controller
@RequestMapping("/userController")
public class UserController {
	private IUserService userService;
	public IUserService getUserService() {
		return userService;
	}
	@Autowired
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	@RequestMapping("/getUser/{id}")
	public String getUser(@PathVariable String id,HttpServletRequest request){
		User u = userService.getUserById(id);
		request.setAttribute("user", u);
		return "showUser";
	}
	/*@RequestMapping("/login")
	public String login(HttpServletRequest request){
		//User u = userService.getUserById(id);
		//request.setAttribute("user", u);
		return "doctorAbout";
	}
*/

}
