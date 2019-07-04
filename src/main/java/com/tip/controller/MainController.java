package com.tip.controller;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.security.auth.spi.LoginModule;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.tip.domain.CustomerDTO;
import com.tip.domain.ServiceDTO;
import com.tip.service.MpModule;
import com.tip.service.Service;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	@Autowired
	MpModule md;
	@Autowired
	Service ms;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		
		
		
		return "home";
	}
	
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	@RequestMapping("logout")
	public String logout(HttpSession ss) {
		ss.removeAttribute("userid");
		
		return "redirect:/";
	}
	
	@PostMapping("login.action")
	public String loginaction(CustomerDTO vo,HttpServletRequest req,HttpServletResponse res,HttpSession se,Model model) throws Exception{
		System.out.println(vo);
		String mg = md.loginck(vo);
		if(mg.equals("ck")) {
			se.setAttribute("userid", vo.getC_id());
			return "home";
		}else if(mg.equals("ad")) {
			se.setAttribute("userid", vo.getC_id());
			return "redirect:Admin/main";
		}else if(mg.equals("nu")){
			System.out.println(mg);
			model.addAttribute("msg", "유저가 존재하지 않습니다");
			
		}else if(mg.equals("np")) {
			model.addAttribute("msg", "비밀번호가 틀렸습니다");
			
		}
		System.out.println(mg);
		return "login.action";
	}
	
	@RequestMapping("join")
	public String join() {
		
		return "join";
	}
	@PostMapping("join.action")
	public String joinaction(CustomerDTO vo,HttpServletRequest req,HttpServletResponse res) throws Exception {
		System.out.println(vo);
		if(md.joinuser(vo)) {
			return "redirect:login";
		}else {
			res.setContentType("text/html;charset=UTF-8");
			PrintWriter out = res.getWriter();
			out.println("<script>alert('회원가입이 실패하였습니다');history.go(-1);</script>");
			out.flush();
		}
		return "redirect:login";
	}
	
	@RequestMapping("/service")
	public String insertservice(ServiceDTO vo,int count) {
		
		System.out.println(count);
		for(int i= 0; i  < count;i++) {
			ms.insertService(vo);	
		}
		return "redirect:/";
	}
	
	@RequestMapping("consoleck")
	public String consoleck(HttpSession se,Model md) {
		ServiceDTO ckuser = new ServiceDTO();
		String id = (String) se.getAttribute("userid");
		ckuser.setC_id(id);
		String ck = ms.ckservice(ckuser);
		if(ck.equals("ok")) {
			return "redirect:/Customer/main";
		}else if(ck.equals("suno")) {
			md.addAttribute("msg", "서비스 신청하시지 않으면 사용이 불가능합니다");
			return "check";
		}else {
			md.addAttribute("msg", "서비스를 등록 되지 않았습니다. 불편을 드려 정말 죄송합니다");
			return "check";
		}
		
	}
	
	@RequestMapping("/andlogin")
	@ResponseBody
	@GetMapping
	public Map<String,String> androidloginhelp(HttpServletRequest request,CustomerDTO vo){
		Map<String,String> result = new HashMap<String, String>();
		System.out.println(vo);
		String mg = md.loginck(vo);
		if(mg.equals("ok")) {
			//se.setAttribute("userid", vo.getC_id());
			result.put("put","ok");
		}else if(mg.equals("nu")){
			System.out.println(mg);
			//model.addAttribute("msg", "유저가 존재하지 않습니다");
			result.put("put","no");
			
		}else if(mg.equals("np")) {
			//model.addAttribute("msg", "비밀번호가 틀렸습니다");
			result.put("put","no");	
		}
		System.out.println(mg);
		return result;
	}
	
}
