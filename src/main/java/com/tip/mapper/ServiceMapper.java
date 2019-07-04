package com.tip.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
}
