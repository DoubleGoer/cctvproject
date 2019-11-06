package com.tip.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import com.tip.domain.CaptureDTO;
import com.tip.domain.CropDTO;
import com.tip.domain.CustomerDTO;
import com.tip.domain.HeatMapDTO;

public interface CaptureMapper {
	@Select("SELECT S_no,RC_Cdate,RC_url FROM cctv.capturetable,service where service.c_id=#{c_id} and capturetable.rc_no=service.rc_no order by S_no desc;")
	public ArrayList<CaptureDTO> getList_Captureable(CaptureDTO ct);
	
	@Select("SELECT S_no,RC_Mdate,RC_url FROM cctv.heatmap,service where service.c_id=#{c_id} and heatmap.rc_no=service.rc_no order by S_no desc;")
	public ArrayList<HeatMapDTO> getList_Heatmap(HeatMapDTO ht);
	
	@Select("SELECT S_no,RC_url,RC_Cdate FROM cctv.crop,service where service.c_id=#{c_id} and crop.rc_no=service.rc_no order by S_no desc;")
	public ArrayList<CropDTO> getList_Crop(CropDTO ct);
	
	

	@Select("SELECT RC_Cdate,RC_url FROM cctv.capturetable,service where service.c_id=#{c_id} and capturetable.rc_no=service.rc_no order by S_no desc;")
	public ArrayList<CaptureDTO> getcapture(CaptureDTO ct);
	
	@Select("SELECT RC_Mdate,RC_url FROM cctv.heatmap,service where service.c_id=#{c_id} and heatmap.rc_no=service.rc_no order by S_no desc;")
	public ArrayList<HeatMapDTO> getheatmap(HeatMapDTO ht);
	
	@Select("SELECT RC_Cdate,RC_url FROM cctv.crop,service where service.c_id=#{c_id} and crop.rc_no=service.rc_no order by S_no desc;")
	public ArrayList<CropDTO> getcropmap(CropDTO ct);
//	
	
	
	
}
