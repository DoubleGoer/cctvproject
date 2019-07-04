package com.tip.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import com.tip.domain.CaptureDTO;
import com.tip.domain.CustomerDTO;

public interface CaptureMapper {

	@Select("select * from capturetable where rc_no = 1")
	public ArrayList<CaptureDTO> getcapture();
	
}
