package com.gld.model.controller;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gld.model.biz.ChallengeBiz;
import com.gld.model.biz.CommentBiz;
import com.gld.model.dto.ChallengeDto;
import com.gld.model.dto.CommentDto;
import com.gld.model.dto.CommentId;

@Controller
@RequestMapping("/challenge")
public class ChallengeController {

   @Autowired
   private ChallengeBiz challengeBiz;
   
   @Autowired
   private CommentBiz commentBiz;
   
      
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
   @PostMapping("/ajaxComment")
   @ResponseBody
   public Map<String, Object> commentDate(@RequestBody CommentId commentid) {
	   System.out.println(commentid.getSeq()+" " +commentid.getId()+" "+commentid.getCommentDate());
	   Map<String, Object> res = new HashMap<>();
	   
	   
	   CommentDto comment = commentBiz.selectComment(commentid.getSeq(), commentid.getId(), commentid.getCommentDate());
	   List<CommentDto> list = commentBiz.selectComments(commentid.getSeq(), commentid.getCommentDate());
	   //System.out.println(comment.getId());
	   System.out.println(list.get(2).getComment());
	   Map<String, CommentDto> map = new HashMap<>();
	   
	   if(comment != null) {
		   map.put("comment", comment);
	   }else {
		   map.put("comment", null);
	   }
	   
	   res.put("comment", map);
	   res.put("list",list);
	   
	   return res;
   }
   
//   @PostMapping("/ajaxComment")
//   @ResponseBody
//   public Map<String, CommentDto> commentDate(@RequestBody Integer seq, @RequestBody Integer id, @RequestBody @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate commentDate) {
//	   System.out.println(seq+" "+ id+" "+commentDate);
//	   
//	   CommentDto comment = commentBiz.selectComment(seq, id, commentDate);
//	   
//	   System.out.println(comment.getId());
//	   
//	   Map<String, CommentDto> map = new HashMap<>();
//	   map.put("comment", comment);
//	   
//	  
//	   
//	   return map;
//   }
   
   
   
     
}