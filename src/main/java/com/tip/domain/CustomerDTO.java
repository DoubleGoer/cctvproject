package com.tip.domain;

import lombok.Data;


public class CustomerDTO {
	private String c_id;
	private String c_name;
	private String c_email;
	private String c_adress;
	private String c_pass;
	private String c_date;
	private int A_a;
	public int getA_a() {
		return A_a;
	}
	public void setA_a(int a_a) {
		A_a = a_a;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_email() {
		return c_email;
	}
	public void setC_email(String c_email) {
		this.c_email = c_email;
	}
	
	public String getC_adress() {
		return c_adress;
	}
	public void setC_adress(String c_adress) {
		this.c_adress = c_adress;
	}
	public String getC_pass() {
		return c_pass;
	}
	public void setC_pass(String c_pass) {
		this.c_pass = c_pass;
	}
	public String getC_date() {
		return c_date;
	}
	public void setC_date(String c_date) {
		this.c_date = c_date;
	}
	
}
