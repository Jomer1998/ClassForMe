package com.tfg.classforme.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelcomeController {
	
	@GetMapping(value = {"/","/welcome"})
	public String welcome(Map<String, Object> model) {
		return "welcome";
	}
	
}
