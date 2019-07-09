package com.tip.controller;

import java.awt.List;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tip.domain.CaptureDTO;
import com.tip.domain.DayDTO;
import com.tip.domain.HourDTO;
import com.tip.domain.MonthDTO;
import com.tip.domain.SearchDataDTO;
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
	@GetMapping("/chart")
	public void chart(Model md,SearchDataDTO vo,HttpSession se) {
		ArrayList<MonthDTO> bb = new ArrayList<MonthDTO>();
		System.out.println(vo);
		vo.setC_id((String) se.getAttribute("userid"));	
		
		if(vo.getData().equals("day")) {
			Date today = new Date();
			SimpleDateFormat tf;
			ArrayList<SearchDataDTO> searchdata = sc.returnsu(vo);
			if(vo.getRc_day() == null) {
				tf = new SimpleDateFormat("yyyy");
				vo.setRc_year(tf.format(today));
				tf = new SimpleDateFormat("MM");
				vo.setRc_month(tf.format(today));
				tf = new SimpleDateFormat("dd");
				vo.setRc_day("06");
				vo.setRc_no("1");
				System.out.println(vo);
			}
			ArrayList<HourDTO> chartdata = sc.returndata(vo);
			
			md.addAttribute("searchdata", searchdata);
			md.addAttribute("chartdata", chartdata);
		}else {
			Date today = new Date();
			SimpleDateFormat tf;
			ArrayList<SearchDataDTO> searchdata = sc.returndaydata(vo);
			if(vo.getRc_month() == null) {
				tf = new SimpleDateFormat("yyyy");
				vo.setRc_year(tf.format(today));
				tf = new SimpleDateFormat("MM");
				vo.setRc_month(tf.format(today));
				tf = new SimpleDateFormat("dd");
				vo.setRc_no("1");
				System.out.println(vo);
			}
			ArrayList<DayDTO> chartdata = sc.returndaychart(vo);
			md.addAttribute("searchdata", searchdata);
			md.addAttribute("chartdata", chartdata);
			
		}
		
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
	public void controll(Model md,HttpSession se) {
		ServiceDTO data = new ServiceDTO();
		data.setC_id((String)se.getAttribute("userid"));
		ArrayList<ServiceDTO> vo = sc.returnip(data);
		System.out.println(vo.size());
		ServiceDTO vs = vo.get(0);
		md.addAttribute("data", vo);
		md.addAttribute("first", vs);
		
	}
	
//	@PostMapping("/yearlist")
//	@ResponseBody
//	public java.util.List<String> retunyear(SearchDataDTO sd,HttpSession se,Model md) {
//		System.out.println(sd.getRc_no());
//		System.out.println((String)se.getAttribute("userid"));
//		sd.setC_id((String)se.getAttribute("userid"));
//		java.util.List<String> arr = new ArrayList<String>();
//		
//		ArrayList<HourDTO> year = sc.returnyear(sd);
//		for(int i = 0 ; i < year.size(); i++) {
//			arr.add(year.get(i).getRc_year());
//		}
//		
//		return arr;
//	}
	
	/* 이름
	 * 역할 : 디바이스 제어를 위한 ajax 데이터 통신 수단
	 */
	@PostMapping("/url.do")
	public void controlldevice(String data,String ip) throws Exception{
		System.out.println(data);
		System.out.println(ip);
		try{
            String ip1 = ip; //클라이언트의 임시 접속 주소
            int port = 9000; //접속할 서버 포트
            Socket socket = new Socket(ip1, port); //클라이언트의 소켓 생성
            
            BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
            OutputStream out = socket.getOutputStream(); //서버의 소켓으로부터 출력을 받음
            InputStream in = socket.getInputStream(); //서버의 소켓으로부터 입력을 받음
             
            PrintWriter pw = new PrintWriter(new OutputStreamWriter(out)); //출력 스트림을 변환
            BufferedReader br = new BufferedReader(new InputStreamReader(in)); //입력 스트림을 변환
             
            pw.println("r");
            
            pw.println("q");
            pw.close();
            br.close();
            socket.close();
        }catch(Exception e){
            e.printStackTrace();
        }

	}

}
