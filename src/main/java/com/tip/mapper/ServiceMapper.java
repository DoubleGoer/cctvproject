package com.tip.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.tip.domain.DayDTO;
import com.tip.domain.HourDTO;
import com.tip.domain.SearchDataDTO;
import com.tip.domain.ServiceDTO;

public interface ServiceMapper {
	
	@Insert("INSERT INTO `cctv`.`service`(`C_ID`,`RC_add`)VALUES(#{c_id},#{rc_add})")
	public void serviceinsert(ServiceDTO vo);
	
	@Update("update service set r_ip=#{r_ip} where c_id=#{c_id} and rc_no=#{rc_no}")
	public void inip(ServiceDTO vo);
	
	@Select("select * from service where c_id=#{c_id} and r_ip is not null")
	public ArrayList<ServiceDTO> conck(ServiceDTO so);
	
	
	@Select("select * from service where r_ip is null")
	public ArrayList<ServiceDTO> serviceok();
	
	@Select("select * from service where c_id=#{c_id}")
	public ArrayList<ServiceDTO> suck(ServiceDTO so);
	
	@Select("select distinct hcp.rc_no,rc_year,rc_month,RC_day from hcp,service where c_id =#{c_id}")
	public ArrayList<SearchDataDTO> choosedata(SearchDataDTO sd);
	
	@Select("select distinct hcp.rc_no,rc_year,rc_month,RC_day,RC_hour,RC_Count from hcp,service where c_id =#{c_id} and hcp.rc_no =#{rc_no} and rc_year=#{rc_year} and rc_month=#{rc_month} and rc_day=#{rc_day}")
	public ArrayList<HourDTO> chartdata(SearchDataDTO sd);
	
	
	@Select("select distinct dcp.rc_no,rc_year,rc_month,rc_day from service,dcp where dcp.rc_no=service.rc_no and c_id=#{c_id}")
	public ArrayList<SearchDataDTO> chooseday(SearchDataDTO sd);
	
	
	@Select("select * from service,dcp where service.RC_NO = dcp.RC_NO and c_id=#{c_id} and rc_month=#{rc_month} and rc_year=#{rc_year}")
	public ArrayList<DayDTO> chartDayData(SearchDataDTO sd);
	
	
}
