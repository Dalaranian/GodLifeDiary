package com.boot.jdbc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.jdbc.model.biz.MyBiz;
import com.boot.jdbc.model.dto.MyDto;

@Controller
public class MyBoardController {
	
	@Autowired
	private MyBiz myBiz;
	
	@GetMapping("/login")
	public String login() {
		return "loginmain";
	}
	
	@GetMapping("/join")
	public String join() {
		return "joinform";

	}

	
	@GetMapping("/main")
	public String main() {
		return "main";
	}
	
	@GetMapping("/mypage")
	public String mypage() {
		return "mypage";
	}

	@GetMapping("/insertchallenge")
	public String insertChallenge() {
		return "insertchallenge";
	}
	@GetMapping("/list")
	public String selectList(Model model) {
		model.addAttribute("list", myBiz.selectList());
		return "myboardlist";
	}
	
	@GetMapping("/insertform")
	public String insertForm() {
		return "myboardinsert";
	}
	
	@PostMapping("/insert")
	public String insert(MyDto dto) {
		if(myBiz.insert(dto)>0) {
			return "redirect:/myboard/list";
		}else {
			return "redirect:/myboard/insertform";
		}
	}
	
	@GetMapping("/detail")
	public String detail(Model model, int myno) {
		model.addAttribute("dto", myBiz.selectOne(myno));
		return "myboarddetail";
	}
	
	@GetMapping("/updateform")
	public String updateForm(Model model, int myno) {
		model.addAttribute("dto", myBiz.selectOne(myno));
		return "myboardupdate";
	}
	
	@PostMapping("/update")
	public String update(MyDto dto) {
		if(myBiz.update(dto)>0) {
			return "redirect:/myboard/detail?myno="+dto.getMyno();
		}else {
			return "redirect:/myboard/updateform?myno="+dto.getMyno();
		}
	}
	
	@GetMapping("/delete")
	public String delete(int myno) {
		if(myBiz.delete(myno)>0) {
			return "redirect:/myboard/list";
		} else {
			return "redirect:/myboard/detail?myno="+myno;
		}
	}

}
