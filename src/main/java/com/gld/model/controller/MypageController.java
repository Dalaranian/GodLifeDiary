package com.gld.model.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gld.model.biz.ChallengeBiz;
import com.gld.model.biz.LoginBiz;
import com.gld.model.biz.RegisteredBiz;
import com.gld.model.dto.ChallengeDto;
import com.gld.model.dto.RegisteredMemberDto;
import com.gld.model.dto.UserDto;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private LoginBiz loginBiz;
	@Autowired
	private ChallengeBiz challengeBiz;
	@Autowired
	private RegisteredBiz registeredBiz;


	@GetMapping("/mypage")
	public String moveToMypage(HttpSession session, Model model) {
		UserDto userDto = (UserDto)session.getAttribute("user");

		List<RegisteredMemberDto> rms = userDto.getList(); //1. 해당 user의 REGISTERED_MEMBER에 SEQ값들을 List로 가져옴
		List<ChallengeDto> chals = new ArrayList<>(); //2. 1에서 가져온 숫자를, G_CHALLENGE랑 join해서 챌린지 객체 List로 가져옴
		for(RegisteredMemberDto rmDto : rms) {
			chals.add(rmDto.getChallengeDto());
		}

		model.addAttribute("user", userDto);
		model.addAttribute("rms", rms); //내가 참여 중인/참여한 챌린지 카운트
		model.addAttribute("challenges", chals);

		//REGISTERED_MEMBER 전체 보내기 (챌린지 별 참여 인원 카운트하려고)
		List<RegisteredMemberDto> rmTotal = registeredBiz.selectAll();
		model.addAttribute("rmTotal", rmTotal);
		return "mypage";
	}



}