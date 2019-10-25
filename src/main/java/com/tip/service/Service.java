package com.tip.service;

import java.util.ArrayList;

import com.tip.domain.CustomerDTO;
import com.tip.domain.DayDTO;
import com.tip.domain.HourDTO;
import com.tip.domain.SearchDataDTO;
import com.tip.domain.ServiceDTO;

@org.springframework.stereotype.Service
public interface Service {

	public void insertService(ServiceDTO vo);
	
	public void updateService(ServiceDTO vo);
	
	public ArrayList<ServiceDTO> ck();
	
	public ArrayList<ServiceDTO> clist();
	
	public ArrayList<CustomerDTO> customlist();
	
	public int countc();
	
	public int counts();
	
	
	public void delcutom(ServiceDTO vo);
	
	public void adminin(ServiceDTO vo);
	public void adminout(ServiceDTO vo);
	
	public void detecton(ServiceDTO vo);
	public void detectoff(ServiceDTO vo);
	
	
	public String ckservice(ServiceDTO vo);
	
	public ArrayList<ServiceDTO> returnip(ServiceDTO vo);
	
	public ArrayList<SearchDataDTO> returnsu(SearchDataDTO sd);
	
	public ArrayList<HourDTO> returndata(SearchDataDTO sd);
	
	public ArrayList<SearchDataDTO> returndaydata(SearchDataDTO sd);
	
	public ArrayList<DayDTO> returndaychart(SearchDataDTO sd);
}
