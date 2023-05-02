package com.gld.model.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String login(String userId, String userPw, HttpSession session,Model model) {
    	 UserDto user = loginBiz.findByUserId(userId);
    	 
    	 if (user != null && user.getUserPw().equals(userPw)) {
             session.setAttribute("user", user);
             return "redirect:/challenge/main";
         } else {
             model.addAttribute("error", "아이디 또는 비밀번호가 일치하지 않습니다.");
             return "loginform";
         }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user");
        return "redirect:/";
    }
}
