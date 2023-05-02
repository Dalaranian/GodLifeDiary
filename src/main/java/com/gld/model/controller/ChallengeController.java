package com.gld.model.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
       List<ChallengeDto> challenges = challengeBiz.selectAll();
       model.addAttribute("challenges", challenges);
       return "main_study";
   } 
   
   @GetMapping("/main_habit")
   public String getHabitChallenges(Model model) {
       List<ChallengeDto> challenges = challengeBiz.selectAll();
       model.addAttribute("challenges", challenges);
       return "main_habit";
   } 
   
   @GetMapping("/main_hobby")
   public String getHobbyChallenges(Model model) {
       List<ChallengeDto> challenges = challengeBiz.selectAll();
       model.addAttribute("challenges", challenges);
       return "main_hobby";
   } 
   
   @GetMapping("/main_workout")
   public String getWorkoutChallenges(Model model) {
       List<ChallengeDto> challenges = challengeBiz.selectAll();
       model.addAttribute("challenges", challenges);
       return "main_workout";
   } 
   
   @GetMapping("/detail")
   public String moveToDetail(Model model, String challengeName) {
	  ChallengeDto challenge = challengeBiz.selectOne(challengeName);
	  model.addAttribute("challenge",challenge);
	  
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