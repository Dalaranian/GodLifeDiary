package com.gld.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@RequestMapping("/mypage")
	public String moveToMypage() {
		return "mypage";
	}
	
	@RequestMapping("/insert")
	public String mychallengeInsert() {
		
		return "mypage";
	}
}
