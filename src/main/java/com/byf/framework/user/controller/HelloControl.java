package com.byf.framework.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//标记这个类是一个Handler处理器
@Controller
public class HelloControl{

	@RequestMapping("/hello")//制定这个控制类对应的url
	public String hello(Model model){
		String message = "SpringMVC";
		//为model添加Attribute
		model.addAttribute("message",message);
		return "hello";
	}
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		//在页面上提示一行信息
		String message = "hello world!";
		
		//通过request对象将信息在页面上展示
		//request.setAttribute("message", message);
		
		ModelAndView modelAndView = new ModelAndView();
		// 相当于request.setAttribute(), 将数据传到页面展示
		//model数据
		modelAndView.addObject("message", message);
		//设置视图
		modelAndView.setViewName("hello");
		
		return modelAndView;
	}
	
	

	
}
