package com.byf.framework.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.byf.framework.user.model.User;
import com.byf.framework.user.service.IUserService;


/** 
 * 登录认证的控制器 
 */
@Controller
@RequestMapping("/hello")
public class LoginController {
	   /** 
	     * 登录 
	     * @param session 
	     *          HttpSession 
	     * @param username 
	     *          用户名 
	     * @param password 
	     *          密码 
	     * @return 
	     */
	    @RequestMapping(method={RequestMethod.GET,RequestMethod.POST})
	    public String processWebRequest(){
	    	return "doctorPatient";
	    }

	    /* public ModelAndView login(HttpSession session,String username,String password) throws Exception{
            //在Session里保存信息  
        	 System.out.println("进入了login方法");
             session.setAttribute("username", username);
             //重定向  
            // return "redirect:hello.action";
             return new ModelAndView("hello.jsp");  
        } */
        /** 
             * 退出系统 
             * @param session 
             *          Session 
             * @return 
             * @throws Exception 
             */ 
          public String logout(HttpSession session) throws Exception{
        	//清除session
        	session.invalidate();
        	return "redirect:hello.action";
        }
           
}
