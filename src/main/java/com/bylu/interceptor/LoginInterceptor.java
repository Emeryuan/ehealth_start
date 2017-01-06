package com.bylu.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
/** 
 * 登录认证的拦截器 
 */
public class LoginInterceptor implements HandlerInterceptor{
	/** 
	 * Handler执行完成之后调用这个方法 
	 */
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("执行了afterCompletion方法");
	}
	/** 
	 * Handler执行之后，ModelAndView返回之前调用这个方法 
	 */
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("执行了postHandle方法");
	}
	/** 
	 * Handler执行之前调用这个方法 
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, 
			Object handler) throws Exception {
		// TODO Auto-generated method stub
/*		//获取请求的URL  
		String url = request.getRequestURI();
		//URL:login.jsp是公开的;这个demo是除了login.jsp是可以公开访问的，其它的URL都进行拦截控制
		if(url.indexOf("login.action")>=0){ 
                return true; 
               } 
		 //获取Session  
         HttpSession session = request.getSession();
         String username = (String)session.getAttribute("username");
         if(username != null){ 
               return true ;
 		  }
        //不符合条件的，跳转到登录界面
        request.getRequestDispatcher("/login.jsp").forward(request, response);
		return false;
*/	
		request.setCharacterEncoding("utf-8");
		System.out.println("执行了prehandle方法");
		//对用户是否登录进行判断
/*		if(request.getSession().getAttribute("user")==null){
			request.getRequestDispatcher("/index.html").forward(request, response);
			return false;
		}    */
		return true;
	}

}
