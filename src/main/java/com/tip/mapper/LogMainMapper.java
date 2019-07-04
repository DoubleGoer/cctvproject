package com.tip.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.tip.domain.CustomerDTO;

public interface LogMainMapper {

	@Insert("insert into customer(c_id,c_pass,c_name,c_email,c_adress,A_a) values (#{c_id},#{c_pass},#{c_name},#{c_email},#{c_adress},0)")
	public boolean insertuser(CustomerDTO vo);
	
	@Update("update customer set A_a=1 where c_id=#{c_id}")
	public void upadmin(CustomerDTO vo);
	
	@Select("select * from customer where c_id=#{c_id}")
	public CustomerDTO loginuser(String c_id);
}
