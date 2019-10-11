package com.tip.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.tip.domain.DayDTO;
import com.tip.domain.HourDTO;
import com.tip.domain.SearchDataDTO;
import com.tip.domain.ServiceDTO;
import com.tip.mapper.ServiceMapper;

@org.springframework.stereotype.Service
public class ServiceModule implements Service {

	@Autowired
	ServiceMapper mp;
	
	@Override
	public void insertService(ServiceDTO vo) {
		// TODO Auto-generated method stub
		mp.serviceinsert(vo);
		
		
	}

	@Override
	public void updateService(ServiceDTO vo) {
		// TODO Auto-generated method stub
		mp.inip(vo);
	}

	@Override
	public String ckservice(ServiceDTO vo) {
		// TODO Auto-generated method stub
		ArrayList<ServiceDTO> suck = mp.suck(vo);
		ArrayList<ServiceDTO> ck = mp.conck(vo);
		System.out.println(ck.size());
		if(suck.size()==0) {
			return "suno";
		}
		if(ck.size() == 0) {
			return "conno";
		}
		return "ok";
	}

	@Override
	public ArrayList<ServiceDTO> ck() {
		// TODO Auto-generated method stub
		ArrayList<ServiceDTO> data = mp.serviceok();
		return data;
	}

	@Override
	public ArrayList<ServiceDTO> returnip(ServiceDTO vo) {
		// TODO Auto-generated method stub
		ArrayList<ServiceDTO> ck = mp.conck(vo);
		return ck;
	}

	@Override
	public ArrayList<SearchDataDTO> returnsu(SearchDataDTO sd) {
		// TODO Auto-generated method stub
		ArrayList<SearchDataDTO> data = mp.choosedata(sd); 
		return data;
	}

	@Override
	public ArrayList<HourDTO> returndata(SearchDataDTO sd) {
		// TODO Auto-generated method stub
		ArrayList<HourDTO> data = mp.chartdata(sd);
		return data;
	}

	@Override
	public ArrayList<SearchDataDTO> returndaydata(SearchDataDTO sd) {
		// TODO Auto-generated method stub
		ArrayList<SearchDataDTO> data = mp.chooseday(sd);
		return data;
	}

	@Override
	public ArrayList<DayDTO> returndaychart(SearchDataDTO sd) {
		// TODO Auto-generated method stub
		ArrayList<DayDTO> data = mp.chartDayData(sd);
		return data;
	}

	

}
