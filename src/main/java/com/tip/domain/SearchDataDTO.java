package com.tip.domain;

public class SearchDataDTO {
	private String c_id;
	private String rc_no;
	private String rc_year;
	private String rc_month;
	private String rc_day;
	private String rc_nextday;
	private String data;
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getRc_no() {
		return rc_no;
	}
	public void setRc_no(String rc_no) {
		this.rc_no = rc_no;
	}
	public String getRc_year() {
		return rc_year;
	}
	public void setRc_year(String rc_year) {
		this.rc_year = rc_year;
	}
	public String getRc_month() {
		return rc_month;
	}
	public void setRc_month(String rc_month) {
		this.rc_month = rc_month;
	}
	public String getRc_day() {
		return rc_day;
	}
	public void setRc_day(String rc_day) {
		this.rc_day = rc_day;
	}
	
	public String getRc_nextday() {
		return rc_nextday;
	}
	public void setRc_nextday(String rc_nextday) {
		this.rc_nextday = rc_nextday;
	}
	@Override
	public String toString() {
		return "SearchDataDTO [c_id=" + c_id + ", rc_no=" + rc_no + ", rc_year=" + rc_year + ", rc_month=" + rc_month
				+ ", rc_day=" + rc_day +  ", data=" + data + "]";
	}
	
	
	
	
}
