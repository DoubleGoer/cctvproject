package com.tip.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tip.domain.CaptureDTO;
import com.tip.domain.CropDTO;
import com.tip.domain.HeatMapDTO;
import com.tip.mapper.CaptureMapper;

@Service
public class CaptureModule implements CaptureService{

	@Autowired
	CaptureMapper mp;
	
	@Override
	public ArrayList<CaptureDTO> getList_Captureable(CaptureDTO ct) {
		ArrayList<CaptureDTO> data;
		data = mp.getList_Captureable(ct);
		return data;
	}
	@Override
	public ArrayList<CropDTO> getList_Crop(CropDTO ct) {
		ArrayList<CropDTO> data;
		data = mp.getList_Crop(ct);
		return data;
	}
	@Override
	public ArrayList<HeatMapDTO> getList_Heatmap(HeatMapDTO ct) {
		ArrayList<HeatMapDTO> data;
		data = mp.getList_Heatmap(ct);
		return data;
	}
//	@Override
//	public ArrayList<CaptureDTO> getcpatureAll(CaptureDTO ct) {
//		ArrayList<CaptureDTO> data;
//		data = mp.getList_Captureable(ct);
//		return data;
//	}
	
	
	
	@Override
	public ArrayList<CaptureDTO> getcpature(CaptureDTO ct) {
		// TODO Auto-generated method stub
		ArrayList<CaptureDTO> data;
		data = mp.getcapture(ct);
		return data;
	}
	@Override
	public ArrayList<HeatMapDTO> getheatmap(HeatMapDTO ht) {
		// TODO Auto-generated method stub
		ArrayList<HeatMapDTO> data;
		data = mp.getheatmap(ht);
		return data;
	}
	@Override
	public ArrayList<CropDTO> getcrop(CropDTO ct) {
		// TODO Auto-generated method stub
		ArrayList<CropDTO> data;
		data = mp.getcropmap(ct);
		return data;
	}

	
}
