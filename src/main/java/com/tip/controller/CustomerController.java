package com.tip.controller;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public void controll(Model md,HttpSession se) {
		ServiceDTO data = new ServiceDTO();
		data.setC_id((String)se.getAttribute("userid"));
		ArrayList<ServiceDTO> vo = sc.returnip(data);
		System.out.println(vo.size());
		ServiceDTO vs = vo.get(0);
		md.addAttribute("data", vo);
		md.addAttribute("first", vs);
		
	}
	@PostMapping("/url.do")
	public void test(String data,String ip) throws Exception{
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
