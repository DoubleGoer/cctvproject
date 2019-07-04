package com.tip.service;

import java.util.ArrayList;

import com.tip.domain.ServiceDTO;

@org.springframework.stereotype.Service
public interface Service {

	public void insertService(ServiceDTO vo);
	
	public void updateService(ServiceDTO vo);
	public ArrayList<ServiceDTO> ck();
	
	public String ckservice(ServiceDTO vo);
}
