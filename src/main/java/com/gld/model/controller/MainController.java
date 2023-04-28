package com.gld.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class MainController {
	
	@RequestMapping("/main_all")
	public String moveToMain_All() {
		return "main_all";
	}
	@RequestMapping("/main_habit")
	public String moveToMain_Habit() {
		return "main_habit";
	}
	@RequestMapping("/main_hobby")
	public String moveToMain_Hobby() {
		return "main_hobby";
	}
	@RequestMapping("/main_study")
	public String moveToMain_Study() {
		return "main_study";
	}
	@RequestMapping("/main_workout")
	public String moveToMain_Workout() {
		return "main_workout";
	}
}
