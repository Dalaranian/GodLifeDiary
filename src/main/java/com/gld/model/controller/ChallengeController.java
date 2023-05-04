package com.gld.model.controller;

import java.time.LocalDate;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gld.model.biz.ChallengeBiz;
import com.gld.model.biz.CommentBiz;
import com.gld.model.biz.LoginBiz;
import com.gld.model.biz.RegisteredBiz;
import com.gld.model.dto.ChallengeDto;
import com.gld.model.dto.CommentDto;
import com.gld.model.dto.CommentId;
import com.gld.model.dto.RegisteredMemberDto;
import com.gld.model.dto.UserDto;

@Controller
@RequestMapping("/challenge")
public class ChallengeController {

	@Autowired
	private LoginBiz loginBiz;

	@Autowired
	private ChallengeBiz challengeBiz;

	@Autowired
	private RegisteredBiz registeredBiz;
	
	@Autowired
	private CommentBiz commentBiz;

	@GetMapping("/main")
	public String getAllChallenges(Model model) {
		// 모든 Challenge 엔티티 조회
		List<ChallengeDto> challenges = challengeBiz.selectAll();
		// 조회된 엔티티들을 모델에 담아서 뷰로 전달
		model.addAttribute("challenges", challenges);
		model.addAttribute("cate", "전체"); //어떤 카테고리인지 띄우려고

		//REGISTERED_MEMBER 전체 보내기
		List<RegisteredMemberDto> rmTotal = registeredBiz.selectAll();
		model.addAttribute("rmTotal", rmTotal);
		return "main";
	}

	   @GetMapping("/main_study")
	   public String getStudyChallenges(Model model) {
	      String category = "공부";
	      List<ChallengeDto> challenges = challengeBiz.findbyCate(category);
	      model.addAttribute("challenges", challenges);
	      model.addAttribute("cate", category);
	      //REGISTERED_MEMBER 전체 보내기
	      List<RegisteredMemberDto> rmTotal = registeredBiz.selectAll();
	      model.addAttribute("rmTotal", rmTotal);
	      return "main";
	   } 

	   @GetMapping("/main_habit")
	   public String getHabitChallenges(Model model) {
	      String category = "습관";
	      List<ChallengeDto> challenges = challengeBiz.findbyCate(category);
	      model.addAttribute("challenges", challenges);
	      model.addAttribute("cate", category);
	      //REGISTERED_MEMBER 전체 보내기
	      List<RegisteredMemberDto> rmTotal = registeredBiz.selectAll();
	      model.addAttribute("rmTotal", rmTotal);
	      return "main";
	   }

	   @GetMapping("/main_hobby")
	   public String getHobbyChallenges(Model model) {
	      String category = "취미";
	      List<ChallengeDto> challenges = challengeBiz.findbyCate(category);
	      model.addAttribute("challenges", challenges);
	      model.addAttribute("cate", category);
	      //REGISTERED_MEMBER 전체 보내기
	      List<RegisteredMemberDto> rmTotal = registeredBiz.selectAll();
	      model.addAttribute("rmTotal", rmTotal);
	      return "main";
	   }

	   @GetMapping("/main_workout")
	   public String getWorkoutChallenges(Model model) {
	      String category = "운동";
	      List<ChallengeDto> challenges = challengeBiz.findbyCate(category);
	      model.addAttribute("challenges", challenges);
	      model.addAttribute("cate", category);
	      //REGISTERED_MEMBER 전체 보내기
	      List<RegisteredMemberDto> rmTotal = registeredBiz.selectAll();
	      model.addAttribute("rmTotal", rmTotal);
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
	
	@PostMapping("/commentinsert")
	public String commentInsert(CommentDto dto,String challangeName) {
		commentBiz.insert(dto);
		return "redirect:/challenge/detail?challengeName="+challangeName;
	}
	
	 @PostMapping("/ajaxComment")
	 @ResponseBody
	 public Map<String, Object> commentDate(@RequestBody CommentId commentid) {
		   System.out.println(commentid.getSeq()+" " +commentid.getId()+" "+commentid.getCommentDate());
		   Map<String, Object> res = new HashMap<>();
		   
		   
		   CommentDto comment = commentBiz.selectComment(commentid.getSeq(), commentid.getId(), commentid.getCommentDate());
		   List<CommentDto> list = commentBiz.selectComments(commentid.getSeq(), commentid.getCommentDate());
		   //list.get(0).getId() -> userid
		   
//		   Map<Integer, String> user = new HashMap<>();
//		   
//		   List<RegisteredMemberDto> rms = userDto.getList(); //1. 해당 user의 REGISTERED_MEMBER에 SEQ값들을 List로 가져옴
//			List<ChallengeDto> chals = new ArrayList<>(); //2. 1에서 가져온 숫자를, G_CHALLENGE랑 join해서 챌린지 객체 List로 가져옴
//			for(RegisteredMemberDto rmDto : rms) {
//				chals.add(rmDto.getChallengeDto());
//			}
		   
//		   for(int i=0; i<list.size(); i++) {
//			   CommentDto commentDto = list.get(i);
//			   List<UserDto> rms = commentDto.getList();
//			   user.put(commentDto.getId(), rms.get(0).getUserId());
//		   }
//		   System.out.println(user.get(1));
		   
		   //System.out.println(comment.getId());
		   //System.out.println(list.get(2).getComment());
		   Map<String, CommentDto> map = new HashMap<>();
		   
		   
		   System.out.println(list);
		   if(comment != null) {
			   map.put("comment", comment);
		   }else {
			   map.put("comment", null);
		   }
		   res.put("comment", map);
		   
		   if(list.size() != 0) {
			   res.put("list", list);
		   }else {
			   res.put("list", null);
		   }
		   
		   return res;
	   }

	// 참여하기 버튼 눌렀을때 로직
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

			// 필요한 DTO, 첼린지별 사람 준비
			ChallengeDto currentChallenge = challengeBiz.selectOneBySeq(challengeSeq);
			UserDto currentUser = loginBiz.findByUserId(userId);
			int currentMember = registeredBiz.coutBySeq(challengeSeq);
			
			System.out.println("필요한 정보 로딩 완료\n" + currentChallenge + "\n" + currentUser + "\n" + currentMember);

			// 비교 후 디비에 넣기
			if (currentChallenge.getChallengeEnabled().equals("Y")
					&& currentMember < currentChallenge.getChallengeMaxMember()) {
				int res = registeredBiz.insert(challengeSeq, currentUser.getId());
				System.out.println("controller insert res: " + res);
				
				// 디비 반영 후 맥스맴버와 커랜트 맴버 비교하기
				int member = registeredBiz.coutBySeq(challengeSeq);
				// 비교 후 둘이 같으면 첼린지 시작
				if(currentChallenge.getChallengeMaxMember() <= member) {
					System.out.println("넘아갔다. \n" + member + "\n" + currentChallenge.getChallengeMaxMember());
					registeredBiz.challengeStart(challengeSeq);
				}
				
				if (res > 0) {
					return currentChallenge.getChallengeName() + "에 참여하였습니다. ";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "이미 참여 중인 챌린지입니다.";// 클라이언트로 반환할 데이터
		}
		return "error 발생";
	}
		
	// 포기하기 delete 
	@RequestMapping(value = "/deleteregist", method = RequestMethod.POST)
	public @ResponseBody Map<String, Boolean> deleteregist(@RequestBody String json) {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Boolean> res = new HashMap<String, Boolean>();
		
		try {
			// JSON 문자열을 Java 객체로 변환
			Map<String, Object> map = mapper.readValue(json, new TypeReference<Map<String, Object>>() {
			});
			
			// Java 객체에서 값을 추출하여 변수에 할당
			String challengeSeq = map.get("challengeSeq").toString();
			String userId = map.get("userId").toString();
			// 필요한 DTO, 첼린지별 사람 준비
			ChallengeDto currentChallenge = challengeBiz.selectOneBySeq(challengeSeq);
			UserDto currentUser = loginBiz.findByUserId(userId);
			
			System.out.println("필요한 정보 로딩 완료");
			
			
			
			// 디비에 지우기 
			if (currentChallenge.getChallengeEnabled().equals("Y")) {
				int delRes = registeredBiz.delete(challengeSeq, Long.parseLong(userId));
				System.out.println("controller del res: " + delRes);
				if(delRes > 0) {
					res.put("res", true);
					return res;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			res.put("res", false);
			return res;
		}
		
		res.put("res", false);
		return res;	}
		
		
		
}


