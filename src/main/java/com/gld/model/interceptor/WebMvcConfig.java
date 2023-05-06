package com.gld.model.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
	
		@Bean
		public LoginInterceptor loginInterceptor() {
		        return new LoginInterceptor();
		}

	    @Override
	    public void addInterceptors(InterceptorRegistry registry) {
	        registry.addInterceptor(loginInterceptor())
	                .addPathPatterns("/**")  
	                .excludePathPatterns("/challenge/main*","/login/**","/css/**", "/js/**", "/images/**","/","/resources/**","/index/**", "/kakaoAuth/**", "/error"); 
	    }
	
}
