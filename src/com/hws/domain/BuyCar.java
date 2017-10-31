package com.hws.domain;

public class BuyCar {
private int id;
private int userid;
private int goodid;
private int goodcount;
private String goodpicture;
private float goodprice;
private String goodtype;
public BuyCar(){
	
}
public BuyCar(int userid, int goodid, int goodcount, String goodpicture, float goodprice, String goodtype) {
	super();
	this.userid = userid;
	this.goodid = goodid;
	this.goodcount = goodcount;
	this.goodpicture = goodpicture;
	this.goodprice = goodprice;
	this.goodtype = goodtype;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public int getGoodid() {
	return goodid;
}
public void setGoodid(int goodid) {
	this.goodid = goodid;
}
public int getGoodcount() {
	return goodcount;
}
public void setGoodcount(int goodcount) {
	this.goodcount = goodcount;
}
public String getGoodpicture() {
	return goodpicture;
}
public void setGoodpicture(String goodpicture) {
	this.goodpicture = goodpicture;
}
public float getGoodprice() {
	return goodprice;
}
public void setGoodprice(float goodprice) {
	this.goodprice = goodprice;
}
public String getGoodtype() {
	return goodtype;
}
public void setGoodtype(String goodtype) {
	this.goodtype = goodtype;
}


}
