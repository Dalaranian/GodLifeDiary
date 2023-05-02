package com.gld.model.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gld.model.biz.ChallengeBiz;
import com.gld.model.biz.LoginBiz;
import com.gld.model.biz.RegisteredBiz;
import com.gld.model.dto.ChallengeDto;
import com.gld.model.dto.UserDto;

@Controller
@RequestMapping("/challenge")
public class ChallengeController {

	@Autowired
	private ChallengeBiz challengeBiz;

	@Autowired
	private RegisteredBiz registeredBiz;
	
	@Autowired
    private LoginBiz loginBiz;

	@GetMapping("/main")
	public String getAllChallenges(Model model) {
		// 모든 Challenge 엔티티 조회
		List<ChallengeDto> challenges = challengeBiz.selectAll();
		// 조회된 엔티티들을 모델에 담아서 뷰로 전달
		model.addAttribute("challenges", challenges);
		return "main";
	}

	@GetMapping("/main_study")
	public String getStudyChallenges(Model model) {
		List<ChallengeDto> challenges = challengeBiz.findbyCate("공부");
		model.addAttribute("challenges", challenges);
		return "main";
	}

	@GetMapping("/main_habit")
	public String getHabitChallenges(Model model) {
		List<ChallengeDto> challenges = challengeBiz.findbyCate("습관");
		model.addAttribute("challenges", challenges);
		return "main";
	}

	@GetMapping("/main_hobby")
	public String getHobbyChallenges(Model model) {
		List<ChallengeDto> challenges = challengeBiz.findbyCate("취미");
		model.addAttribute("challenges", challenges);
		return "main";
	}

	@GetMapping("/main_workout")
	public String getWorkoutChallenges(Model model) {
		List<ChallengeDto> challenges = challengeBiz.findbyCate("운동");
		model.addAttribute("challenges", challenges);
		return "main";
	}

	@GetMapping("/detail")
	public String moveToDetail(Model model, String challengeName) {
		ChallengeDto challenge = challengeBiz.selectOne(challengeName);
		model.addAttribute("challenge", challenge);

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

	@RequestMapping(value = "/joinuser", method = RequestMethod.POST)
	public @ResponseBody String joinUser(@RequestBody String json) {
		ObjectMapper mapper = new ObjectMapper();
		try {
			// JSON 문자열을 Java 객체로 변환
			Map<String, Object> map = mapper.readValue(json, new TypeReference<Map<String, Object>>() {
			});

			// Java 객체에서 값을 추출하여 변수에 할당
			String challengeSeq = map.get("challengeSeq").toString();
			String userId = map.get("userId").toString();

			ChallengeDto currentChallenge = challengeBiz.selectOneBySeq(challengeSeq);
			UserDto currentUser = loginBiz.findByUserId(userId);
			System.out.println();
			int currentMember = registeredBiz.coutBySeq(challengeSeq);

			if (currentChallenge.getChallengeEnabled().equals("Y")
					&& currentMember <= currentChallenge.getChallengeMaxMember()) {
//				registeredBiz.insert(challengeSeq, )
			}

			return "success"; // 클라이언트로 반환할 데이터
		} catch (Exception e) {
			e.printStackTrace();
			return "failure"; // 클라이언트로 반환할 데이터
		}

	}
}