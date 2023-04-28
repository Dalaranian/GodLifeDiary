package com.gld.model.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gld.model.biz.ChallengeBiz;
import com.gld.model.dto.ChallengeDto;


@Controller
@RequestMapping("/challenge")
public class ChallengeController {

	@Autowired
    private ChallengeBiz challengeBiz;

	@GetMapping("/detail")
	public String moveToDetail() {
		return "challengedetail";
	}
	
	@GetMapping("/insert")
	public String insert() {
		return "challengeinsert";
	}

	@PostMapping("/challengeinsert")
	public String challengeInsert(ChallengeDto dto) {
		challengeBiz.insert(dto);
		return "challengeinsert_res";
	}
	
	
	
}
