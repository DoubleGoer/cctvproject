package com.tip.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tip.domain.ServiceDTO;


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
	public String page(Model md) {
		ArrayList<ServiceDTO> ss = new ArrayList<ServiceDTO>();
		
		md.addAttribute("data", ss);	
		return "Admin/allsystem";
		
	}
}
