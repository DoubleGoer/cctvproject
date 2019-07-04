package com.tip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tip.domain.CustomerDTO;
import com.tip.mapper.LogMainMapper;

@Service
public class LoginMudule implements MpModule {
	
	@Autowired
	LogMainMapper mapper;
	
	@Override
	public String loginck(CustomerDTO vo) {
		// TODO Auto-generated method stub
		CustomerDTO ck = mapper.loginuser(vo.getC_id());
		if(ck!=null) {
			if(ck.getC_pass().equals(vo.getC_pass())) {
				if(ck.getA_a()==0) {
					return "ck";	
				}else {
					return "ad";
				}
			}
			return "np";
		}
		return "nu";
	}


	@Override
	public boolean joinuser(CustomerDTO vo) {
		// TODO Auto-generated method stub
		
		Boolean ck = mapper.insertuser(vo);
		if(ck==true) {
			return true;
		}
		
		return false;
	}

}
