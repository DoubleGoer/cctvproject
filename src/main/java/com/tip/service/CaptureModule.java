package com.tip.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tip.domain.CaptureDTO;
import com.tip.mapper.CaptureMapper;

@Service
public class CaptureModule implements CaptureService{

	@Autowired
	CaptureMapper mp;
	
	
	@Override
	public ArrayList<CaptureDTO> getcpature() {
		// TODO Auto-generated method stub
		System.out.println("일단 허가 됨");
		ArrayList<CaptureDTO> data;
		data = mp.getcapture();
		System.out.println(data);
		return data;
	}

	
}
