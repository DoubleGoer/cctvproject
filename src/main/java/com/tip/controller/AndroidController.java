package com.tip.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tip.domain.CaptureDTO;
import com.tip.domain.CropDTO;
import com.tip.domain.CustomerDTO;
import com.tip.domain.HeatMapDTO;
import com.tip.domain.ServiceDTO;
import com.tip.service.CaptureService;
import com.tip.service.MpModule;
import com.tip.service.Service;

@Controller
@RequestMapping("/android/*")
public class AndroidController {
	@Autowired
	MpModule md;
	@Autowired
	Service ms;
	@Autowired
	CaptureService cs;
	
	@PostMapping("/login")
	public Map<String, String> androidTestWithRequestAndResponse(HttpServletRequest request,CustomerDTO user){
			System.out.println("접근확인");
	        ArrayList<CustomerDTO> visionDto = new ArrayList<CustomerDTO>();
	        Map<String, String> result = new HashMap<String, String>();
	        String ck = md.loginck(user);
	        result.put("check",ck);
	        return result;
	}
	@PostMapping("/detecton")
	public void detecton(String rc_no){
			System.out.println("접근확인");
			ServiceDTO dd = new ServiceDTO();
	        dd.setRc_no(Integer.parseInt(rc_no));
			ms.detecton(dd);
	}
	@PostMapping("/detectoff")
	public void detectoff(String rc_no){
			System.out.println("접근확인");
	        ServiceDTO dd = new ServiceDTO();
	        dd.setRc_no(Integer.parseInt(rc_no));
	        ms.detectoff(dd);
	}
	//getListCaptureable
	@RequestMapping(value = "/getListCaptureable", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public ArrayList<CaptureDTO> getListCaptureable(Model md,CaptureDTO ca,HeatMapDTO ha,CropDTO ct) {
		
		ca.setC_id("khs4637");
		ArrayList<CaptureDTO> cap = cs.getList_Captureable(ca);
		System.out.println(cs.getList_Captureable(ca));
		return cs.getList_Captureable(ca);
	}
	
	//getListCrop
	@RequestMapping(value = "/getListCrop", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public ArrayList<CropDTO> getListCrop(Model md,CaptureDTO ca,HeatMapDTO ha,CropDTO ct) {
		
		ct.setC_id("khs4637");
		ArrayList<CropDTO> cap = cs.getList_Crop(ct);
		System.out.println(cs.getList_Crop(ct));
		return cs.getList_Crop(ct);
	}
	
	//getListHeatmap
	@RequestMapping(value = "/getListHeatmap", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public ArrayList<HeatMapDTO> getListHeatmap(Model md,CaptureDTO ca,HeatMapDTO ha,CropDTO ct) {
		
		ha.setC_id("khs4637");
		ArrayList<HeatMapDTO> cap = cs.getList_Heatmap(ha);
		return cs.getList_Heatmap(ha);
	}
	
	
	@RequestMapping(value = "/getListCctvIP", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public ArrayList<ServiceDTO> getListCctvIP(Model md,CaptureDTO ca,HeatMapDTO ha,CropDTO ct,ServiceDTO user) {
		
		user.setRc_no(9);
		user.setC_id("khs4637");
		ArrayList<ServiceDTO> cap = ms.returnip2(user);
		return  ms.returnip(user);
		
	}
	
	
	
	
	

//	@RequestMapping(value = "/getListMap", method = { RequestMethod.GET, RequestMethod.POST })
//	@ResponseBody
//	public ArrayList<CaptureDTO> getListMap(Model md,CaptureDTO ca,HeatMapDTO ha,CropDTO ct) {
//		
//		ca.setC_id("khs4637");
//		ArrayList<CaptureDTO> cap = cs.getcpatureAll(ca);
//		return cs.getcpatureAll(ca);
//	}

}
