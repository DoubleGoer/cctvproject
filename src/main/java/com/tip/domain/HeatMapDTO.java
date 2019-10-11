package com.tip.domain;

import java.util.Date;

public class HeatMapDTO {
	private String s_no;
	private String rc_no;
	private String rc_url;
	private String c_id;
	private Date rc_mdate;
	public String getS_no() {
		return s_no;
	}
	public void setS_no(String s_no) {
		this.s_no = s_no;
	}
	public String getRc_no() {
		return rc_no;
	}
	public void setRc_no(String rc_no) {
		this.rc_no = rc_no;
	}
	public String getRc_url() {
		return rc_url;
	}
	public void setRc_url(String rc_url) {
		this.rc_url = rc_url;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public Date getRc_mdate() {
		return rc_mdate;
	}
	public void setRc_mdate(Date rc_mdate) {
		this.rc_mdate = rc_mdate;
	}
	
}
