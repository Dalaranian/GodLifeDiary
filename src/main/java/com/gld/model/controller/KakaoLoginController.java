package com.gld.model.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gld.model.biz.LoginBiz;
import com.gld.model.dto.UserDto;

@Controller
@RequestMapping("/kakaoAuth")
public class KakaoLoginController {

	@Autowired
	private LoginBiz loginBiz;

	@ResponseBody
	@PostMapping("/authSender")
	public Map<String, String> kakaoAuth(@RequestBody UserDto dto, HttpSession session) {
		Map<String, String> result = new HashMap<>();
		UserDto user = loginBiz.findByUserId(dto.getUserId());
		System.out.println(dto);
		if(user != null) {
			//있는 계정일 시, 바로 로그인
			result.put("result", "true");
		}else {
			//없는 계정일 시, 회원가입 페이지로 이동
			result.put("result", "false");
			result.put("userId", dto.getUserId());
			result.put("userName", dto.getUserName());
		}
		return result;
	}
}
