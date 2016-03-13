package com.gds.util;

import javax.servlet.http.HttpSession;

public class AuthUtil {
	
	public static final String AUTH_ADMIN_VALUE = "gdsadmin";
	public static final String AUTH_ADMIN_PASSWORD = "gdsadmin";
	
	public static boolean isAuthorized(HttpSession session) {
		Object authAttr = session.getAttribute("auth");
		return authAttr == null || !AUTH_ADMIN_VALUE.equals((String) authAttr);
	}

}
