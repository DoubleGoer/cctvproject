package com.tip.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.tip.domain.CaptureDTO;
import com.tip.domain.CropDTO;
import com.tip.domain.HeatMapDTO;

@Service
public interface CaptureService {

	public ArrayList<CaptureDTO> getList_Captureable(CaptureDTO ct);
	
	public ArrayList<CropDTO> getList_Crop(CropDTO ct);
	
	public ArrayList<HeatMapDTO> getList_Heatmap(HeatMapDTO ct);
	
	
	public ArrayList<CaptureDTO> getcpature(CaptureDTO ct);

	public ArrayList<HeatMapDTO> getheatmap(HeatMapDTO ht);
	
	public ArrayList<CropDTO> getcrop(CropDTO ht);
	
	
	
	
}
