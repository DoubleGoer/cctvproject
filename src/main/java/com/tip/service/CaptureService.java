package com.tip.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.tip.domain.CaptureDTO;

@Service
public interface CaptureService {

	public ArrayList<CaptureDTO> getcpature();
}
