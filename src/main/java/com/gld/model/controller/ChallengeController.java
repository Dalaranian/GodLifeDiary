package com.gld.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/challenge")
public class ChallengeController {
	
	@RequestMapping("/detail")
	public String moveToDetail() {
		return "challengedetail";
	}
}
