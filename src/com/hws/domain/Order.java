package com.hws.domain;

public class Order {
	private int id;
	private String username;
	private String useraddress;
	private String phone;

	private int goodid;
	private float goodprice;
	private int goodcount;
	
	private String date;
	private String ynpay;
	
	private int userid;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUseraddress() {
		return useraddress;
	}
	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public int getGoodid() {
		return goodid;
	}
	public void setGoodid(int goodid) {
		this.goodid = goodid;
	}
	public float getGoodprice() {
		return goodprice;
	}
	public void setGoodprice(float goodprice) {
		this.goodprice = goodprice;
	}
	public int getGoodcount() {
		return goodcount;
	}
	public void setGoodcount(int goodcount) {
		this.goodcount = goodcount;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getYnpay() {
		return ynpay;
	}
	public void setYnpay(String ynpay) {
		this.ynpay = ynpay;
	}

}
