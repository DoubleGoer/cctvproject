package com.tip.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tip.domain.CaptureDTO;
import com.tip.domain.MonthDTO;
import com.tip.domain.ServiceDTO;
import com.tip.service.CaptureService;
import com.tip.service.Service;

@Controller
@RequestMapping("/Customer/*")
public class CustomerController {
	
	@Autowired
	CaptureService cs;
	
	@Autowired
	Service sc;
	
	@RequestMapping("/main")
	public void main(HttpSession se,Model md) {
		ServiceDTO data = new ServiceDTO();
		data.setC_id((String)se.getAttribute("userid"));
		ArrayList<ServiceDTO> vo = sc.returnip(data);
		System.out.println(vo.size());
		ServiceDTO vs = vo.get(0);
		md.addAttribute("data", vo);
		md.addAttribute("first", vs);
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
