package com.gld.model.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{
	//Controller 실행 요청 전에 수행되는 메소드
	//return false일 경우 controller 실행 x
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
		
		if(request.getSession().getAttribute("user")==null) {
			response.sendRedirect(request.getContextPath() + "/login/login");
			return false;
		}
		return true;
		
	}
	
	//view단으로 forward 되기전에 수행 
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {

	}
	
	//view까지 처리 끝난 후 수행 
		@Override
		public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex){

	}
}
