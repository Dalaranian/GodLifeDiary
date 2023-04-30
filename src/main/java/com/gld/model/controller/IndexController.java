package com.gld.model.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gld.model.biz.LoginBiz;
import com.gld.model.dto.UserDto;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Autowired
	LoginBiz loginBiz;
/*
	@GetMapping("/main")
	public String moveToMain() {
		System.out.println("go to main");
		return "main";
	}*/
	
	@GetMapping("/index")
	public String goToIndex() {
		return "index";
	}
	
	
	@GetMapping("/kakao_login")
	public String kakaloLoging() {
		return "kakao_login";
	}
	
	@PostMapping("/kakaoAuth")
	public String kakaoAuth(@RequestBody UserDto dto, Model model) {
		System.out.println(dto);
		/*if(loginBiz.selectOne(dto)!=null) {
			
		}*/
		return "";
	}
}
