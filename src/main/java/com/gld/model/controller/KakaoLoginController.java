package com.gld.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gld.model.dto.UserDto;

@Controller
@RequestMapping("/kakaoAuth")
public class KakaoLoginController {
	@PostMapping("/kakaoAuth")
	public String kakaoAuth(@RequestBody UserDto dto, Model model) {
		System.out.println(dto);
		/*if(loginBiz.selectOne(dto)!=null) {
			
		}*/
		return "";
	}
}
