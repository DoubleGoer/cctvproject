package com.tip.service;

import java.util.ArrayList;

import com.tip.domain.DayDTO;
import com.tip.domain.HourDTO;
import com.tip.domain.SearchDataDTO;
import com.tip.domain.ServiceDTO;

@org.springframework.stereotype.Service
public interface Service {

	public void insertService(ServiceDTO vo);
	
	public void updateService(ServiceDTO vo);
	public ArrayList<ServiceDTO> ck();
	
	public String ckservice(ServiceDTO vo);
	
	public ArrayList<ServiceDTO> returnip(ServiceDTO vo);
	
	public ArrayList<SearchDataDTO> returnsu(SearchDataDTO sd);
	
	public ArrayList<HourDTO> returndata(SearchDataDTO sd);
	
	public ArrayList<SearchDataDTO> returndaydata(SearchDataDTO sd);
	
	public ArrayList<DayDTO> returndaychart(SearchDataDTO sd);
}
