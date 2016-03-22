package com.gds.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gds.util.AuthUtil;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(
				HttpServletRequest request, 
				HttpServletResponse response, 
				Object handler) throws Exception {
		
		HttpSession session = request.getSession();
		if (AuthUtil.isAuthorized(session)) {
			// System.out.println("You cannot pass through without auth value!");
//			response.sendRedirect("/GDS/admin/login.do");
			response.sendRedirect("/admin/login.do");
			return false;
		}
		
		return true;
	}
	
	@Override
	public void postHandle(
				HttpServletRequest request, 
				HttpServletResponse response, 
				Object handler,
				ModelAndView mav) throws Exception {
		
		if (mav != null) {
			mav.addObject("fromAdmin", true);
		}
		
		super.postHandle(request, response, handler, mav);
	}
	
}
