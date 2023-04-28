package com.gld.model.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gld.model.biz.LoginBiz;
import com.gld.model.dto.UserDto;
import com.gld.model.repository.UserRepository;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private LoginBiz loginBiz;

	@GetMapping("/login")
	public String moveToLogin() {
		System.out.println("go to loginform");
		return "loginform";
	}

	@GetMapping("/join")
	public String moveToJoin() {
		System.out.println("go to joinform");
		return "joinform";
	}

	@GetMapping("/find")
	public String moveToFind() {
		System.out.println("go to findform");
		return "findform";
	}

	@PostMapping("/logincheck")
	public String login(String userId, String userPw, HttpSession session, Model model) {
		UserDto user = loginBiz.findByUserId(userId);

		if (user != null && user.getUserPw().equals(userPw)) {
			session.setAttribute("currentLoginUser", user);
			return "redirect:/";
		} else {
			model.addAttribute("error", "아이디 또는 비밀번호가 일치하지 않습니다.");
			System.out.println(userId + " " + userPw);
			return "loginform";
		}
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:/";
	}

	// 카카오 인증 후 넘어온 정보 컨트롤링
	@PostMapping("/kakaoAuth")
	@ResponseBody
	public Map<String, String> kakaoAuth(@RequestBody UserDto dto, Model model, HttpSession session) {
//		System.out.println(dto);
//		UserDto user = loginBiz.findByUserId(dto.getUserId());
//		if (user != null) {
//			System.out.println("아이디 있지롱");
//			session.setAttribute("currentLoginUser", user);
//			return "redirect:/";
//		} else {
//			System.out.println("아이디 없지롱");
//			return "joinform";
//		}
		System.out.println(dto);
		Map<String,String> map  = new HashMap<String,String>();
		map.put("msg", "true");
		
		return map;
	}
}
