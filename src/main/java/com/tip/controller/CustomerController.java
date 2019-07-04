package com.tip.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tip.domain.CaptureDTO;
import com.tip.domain.MonthDTO;
import com.tip.service.CaptureService;

@Controller
@RequestMapping("/Customer/*")
public class CustomerController {
	
	@Autowired
	CaptureService cs;
	
	@RequestMapping("/main")
	public void main() {
		
		
	}
	@RequestMapping("/chart")
	public void chart(Model md) {
		ArrayList<MonthDTO> bb = new ArrayList<MonthDTO>();
		
		bb.add(new MonthDTO("월", 30));
		bb.add(new MonthDTO("화", 50));
		bb.add(new MonthDTO("수", 70));
		bb.add(new MonthDTO("목", 20));
		bb.add(new MonthDTO("금", 40));
		md.addAttribute("resultList", bb);
	}
	
	
	@RequestMapping("/capture")
	public void capture(Model md) {
		ArrayList<CaptureDTO> cd = cs.getcpature();
		md.addAttribute("resultList", cd);
	}
	
	@RequestMapping("/chartand")
	public void chartand(Model md) {
		ArrayList<MonthDTO> bb = new ArrayList<MonthDTO>();
		bb.add(new MonthDTO("월", 30));
		bb.add(new MonthDTO("화", 50));
		bb.add(new MonthDTO("수", 70));
		bb.add(new MonthDTO("목", 20));
		bb.add(new MonthDTO("금", 40));
		md.addAttribute("resultList", bb);
	}
	@RequestMapping("/controll")
	public void controll(Model md) {
		
		
	}

}
