package com.byf.framework.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.byf.framework.user.model.User;
import com.byf.framework.user.service.IUserService;
import com.byf.framework.user.service.IUserService2;

@Controller
@RequestMapping("/userController")
public class UserController {
	private IUserService userService;
	private IUserService2 userService2;
	public IUserService2 getUserService2() {
		return userService2;
	}
	@Autowired
	public void setUserService2(IUserService2 userService2) {
		this.userService2 = userService2;
	}
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
		System.out.println("进入了getuser方法");
		request.setAttribute("user1", u);
		return "showUser";
	}
	@RequestMapping("/test/{id}")
	public String test(@PathVariable String id,HttpServletRequest request){
		User u = userService2.getUserById(id);
		System.out.println("进入了test方法");
		request.setAttribute("user2", u);
		return "showUser_2";
	}
	  @RequestMapping(method={RequestMethod.GET,RequestMethod.POST})
     public String login(HttpSession session,String username,String password) throws Exception{
         //在Session里保存信息  
     	   System.out.println("进入了login方法");
          session.setAttribute("username", username);
          //重定向  
         // return "redirect:hello.action";
          return "doctorPatient";
     } 
	@RequestMapping("/login1")
	 public String htmlView(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //User u = userService.getUserById(id);
		//request.setAttribute("user", u);
		return "doctorAbout";
	//    request.getRequestDispatcher("doctorAbout.html").forward(request, response);

	}


}
