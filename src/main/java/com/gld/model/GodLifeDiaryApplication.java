package com.gld.model;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Controller
@EnableSwagger2
@SpringBootApplication
public class GodLifeDiaryApplication {

	public static void main(String[] args) {
		SpringApplication.run(GodLifeDiaryApplication.class, args);
	}
	
	@RequestMapping("/")
	public String root() {
		return "index";
	}

}
