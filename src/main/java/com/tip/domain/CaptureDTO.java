package com.tip.domain;

import java.util.Date;

public class CaptureDTO {

	private int rno;
	private Date rc_cdate;
	private String rc_pic;
	private int s_no;
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public Date getRc_cdate() {
		return rc_cdate;
	}
	public void setRc_cdate(Date rc_cdate) {
		this.rc_cdate = rc_cdate;
	}
	public String getRc_pic() {
		return rc_pic;
	}
	public void setRc_pic(String rc_pic) {
		this.rc_pic = rc_pic;
	}
	@Override
	public String toString() {
		return "CaptureDTO [rno=" + rno + ", rc_cdate=" + rc_cdate + ", rc_pic=" + rc_pic + "]";
	}
}