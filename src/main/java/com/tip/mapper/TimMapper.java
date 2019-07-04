package com.tip.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimMapper {

	
	@Select("SELECT sysdate FROM dual")
	public String getTime();
	
	
	public String getTime2();
}
