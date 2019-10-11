package com.tip.domain;

public class CropDTO {
	private String s_no;
	private String rc_no;
	private String rc_cdate;
	private String rc_url;
	private String c_id;
	
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
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
	public String getRc_cdate() {
		return rc_cdate;
	}
	public void setRc_cdate(String rc_cdate) {
		this.rc_cdate = rc_cdate;
	}
	public String getRc_url() {
		return rc_url;
	}
	public void setRc_url(String rc_url) {
		this.rc_url = rc_url;
	}
}
