package com.tip.service;

import org.springframework.stereotype.Service;

import com.tip.domain.CustomerDTO;
@Service
public interface MpModule {
	public boolean joinuser(CustomerDTO vo);
	public String loginck(CustomerDTO vo);

}
