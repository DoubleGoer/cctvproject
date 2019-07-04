package com.tip.domain;

import java.util.Date;

public class ServiceDTO {
	private int rc_no;
	private String r_ip;
	private String c_id;
	private Date rc_sdate;
	private Date rc_con;
	private String rc_add;
	
	public String getRc_add() {
		return rc_add;
	}
	public void setRc_add(String rc_add) {
		this.rc_add = rc_add;
	}
	public int getRc_no() {
		return rc_no;
	}
	public void setRc_no(int rc_no) {
		this.rc_no = rc_no;
	}
	public String getR_ip() {
		return r_ip;
	}
	public void setR_ip(String r_ip) {
		this.r_ip = r_ip;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public Date getRc_sdate() {
		return rc_sdate;
	}
	public void setRc_sdate(Date rc_sdate) {
		this.rc_sdate = rc_sdate;
	}
	public Date getRc_con() {
		return rc_con;
	}
	public void setRc_con(Date rc_con) {
		this.rc_con = rc_con;
	}
}
