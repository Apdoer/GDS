package com.gds.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gds.util.AuthConstantUtil;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		Object authAttr = session.getAttribute("auth");
		if (authAttr == null || !AuthConstantUtil.AUTH_ADMIN_VALUE.equals((String) authAttr)) {
			// System.out.println("You cannot pass through without auth value!");
			response.sendRedirect("/GDS/admin/login.do");
			return false;
		}
		
		return true;
	}
	
}
