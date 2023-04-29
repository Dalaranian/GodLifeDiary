package com.gld.model.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/**")  // 로그인 체크를 할 URL 패턴
                .excludePathPatterns("/login/**","/css/**", "/js/**", "/images/**","/","/resources/**","/index/main"); // 로그인 체크를 제외할 URL 패턴
    }
}

