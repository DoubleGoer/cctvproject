package com.tip.service;

import com.tip.domain.ServiceDTO;

@org.springframework.stereotype.Service
public interface Service {

	public void insertService(ServiceDTO vo);
	
	public void updateService(ServiceDTO vo);
	
	public String ckservice(ServiceDTO vo);
}
