package com.tip.domain;

import lombok.Data;


public class MonthDTO {

	private String month;
	private int data;
	public MonthDTO(String month, int data) {
		super();
		this.month = month;
		this.data = data;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public int getData() {
		return data;
	}
	public void setData(int data) {
		this.data = data;
	}
	
}
