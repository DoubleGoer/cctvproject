package com.tip.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tip.domain.CustomerDTO;
import com.tip.domain.ServiceDTO;
import com.tip.service.Service;


@Controller
@RequestMapping("/Admin/*")
public class AdministorController {
	
	@Autowired
	Service ms;
	
	@RequestMapping("/main")
	public void mainpage(Model md) {
		ArrayList<ServiceDTO> ss = ms.ck();
		int people = ms.countc();
		int scount = ms.counts();
		md.addAttribute("data", ss);
		md.addAttribute("all",people);
		md.addAttribute("suser", scount);
		md.addAttribute("user", (people-scount));
		
		
		
		
	}
	@RequestMapping("/allsystem")
	public String systempage(Model md) {
		ArrayList<ServiceDTO> ss = ms.clist();
		md.addAttribute("data", ss);
		return "Admin/allsystem";
	}
	@PostMapping("/controll")
	public void controll(Model md,ServiceDTO ds) {
		ServiceDTO data = new ServiceDTO();
		ArrayList<ServiceDTO> vo = ms.returnip(ds);
		System.out.println(vo.size());
		ServiceDTO vs = vo.get(0);
		md.addAttribute("data", vo);
		md.addAttribute("first", vs);
		
	}
	
	
	@RequestMapping("/cservice")
	public String page(Model md) {
		ArrayList<ServiceDTO> ss = ms.ck();
		md.addAttribute("data", ss);
		return "Admin/cservice";
	}
	@PostMapping("/cservice.action")
	public String update(ServiceDTO vo,Model md) {
		ms.updateService(vo);
		return "redirect:cservice";
	}
	
	@RequestMapping("/am")
	public void admpage(Model md) {
		ArrayList<CustomerDTO> vv = ms.customlist();
		ArrayList<CustomerDTO> dd = new ArrayList<CustomerDTO>();
		ArrayList<CustomerDTO> ss = new ArrayList<CustomerDTO>();
		
		for(int i=0;i<vv.size();i++) {
			if(vv.get(i).getA_a()==0) {
				ss.add(vv.get(i));
			}else {
				dd.add(vv.get(i));
			}
		}
		
		md.addAttribute("data", ss);
		md.addAttribute("dataA", dd);
	}
	@PostMapping("/amin.action")
	public String adin(String[] c_id,Model md) {
		ServiceDTO bb = new ServiceDTO();
		System.out.println(c_id.length);
		for(String vv : c_id) {
			bb.setC_id(vv);
			ms.adminin(bb);
		}
//		ms.updateService(vv);
		return "redirect:am";
	}
	@PostMapping("/amout.action")
	public String adout(String[] c_id,Model md) {
		ServiceDTO bb = new ServiceDTO();
		System.out.println(c_id.length);
		for(String vv : c_id) {
			bb.setC_id(vv);
			ms.adminout(bb);
		}
//		ms.updateService(vv);
		return "redirect:am";
	}
	
	
	@RequestMapping("/cm")
	public void cdmpage(Model md) {
		ArrayList<CustomerDTO> ss = ms.customlist();
		for(int i=0;i<ss.size();i++) {
			if(ss.get(i).getA_a()==1) {
				ss.remove(i);
			}
		}
		md.addAttribute("data", ss);
	}
	
	@PostMapping("/cm.action")
	public String update(String[] c_id,Model md) {
		ServiceDTO bb = new ServiceDTO();
		System.out.println(c_id.length);
		for(String vv : c_id) {
			bb.setC_id(vv);
			ms.delcutom(bb);
		}
//		ms.updateService(vv);
		return "redirect:cm";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
