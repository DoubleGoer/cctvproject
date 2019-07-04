package com.tip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/Admin/*")
public class AdministorController {
	
	@RequestMapping("/main")
	public void mainpage() {
		
		
	}
	@RequestMapping("/allsystem")
	public String systempage() {
		
		return "Admin/allsystem";
	}
	@RequestMapping("/am")
	public void admpage() {
		
		
	}
	@RequestMapping("/cm")
	public void cdmpage() {
		
		
	}
	@RequestMapping("/cservice")
	public String page() {
		
		
		return "Admin/allsystem";
		
	}
}
