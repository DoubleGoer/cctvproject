package com.tip.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import com.tip.domain.CaptureDTO;
import com.tip.domain.CropDTO;
import com.tip.domain.CustomerDTO;
import com.tip.domain.HeatMapDTO;

public interface CaptureMapper {

	@Select("SELECT RC_Cdate,RC_url FROM cctv.capturetable,service where service.c_id=#{c_id} and capturetable.rc_no=service.rc_no")
	public ArrayList<CaptureDTO> getcapture(CaptureDTO ct);
	
	@Select("SELECT RC_Mdate,RC_url FROM cctv.heatmap,service where service.c_id=#{c_id} and heatmap.rc_no=service.rc_no")
	public ArrayList<HeatMapDTO> getheatmap(HeatMapDTO ht);
	
	@Select("SELECT RC_Cdate,RC_url FROM cctv.crop,service where service.c_id=#{c_id} and crop.rc_no=service.rc_no")
	public ArrayList<CropDTO> getcropmap(CropDTO ct);
//	
	
	
	
}
