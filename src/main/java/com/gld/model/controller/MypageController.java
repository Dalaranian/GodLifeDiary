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

	@GetMapping("/mypage")
	public String moveToMypage(HttpSession session, Model model) {
		UserDto userDto = (UserDto)session.getAttribute("user");

		List<RegisteredMemberDto> rms = userDto.getList(); //1. 해당 user의 REGISTERED_MEMBER에 SEQ값들을 List로 가져옴
		List<ChallengeDto> chals = new ArrayList<>(); //2. 1에서 가져온 숫자를, G_CHALLENGE랑 join해서 챌린지 객체 List로 가져옴
		for(RegisteredMemberDto rmDto : rms) {
			chals.add(rmDto.getChallengeDto());
		}
		model.addAttribute("rms", rms); //진행 중인 챌린지 카운트 해야 하니까.. 근데 여기서는 status를 모르는데?
		model.addAttribute("challenges", chals);
		model.addAttribute("user", userDto);
		return "mypage";
	}



}