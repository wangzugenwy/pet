package com.hws.domain;

public class Goodcomment {
private int id;
private String username;
private String date;
private String comment;
private int goodid;
public Goodcomment(){
	
}
public Goodcomment(String username, String comment, int goodid) {
	super();
	this.username = username;
	this.comment = comment;
	this.goodid = goodid;
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
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getComment() {
	return comment;
}
public void setComment(String comment) {
	this.comment = comment;
}
public int getGoodid() {
	return goodid;
}
public void setGoodid(int goodid) {
	this.goodid = goodid;
}

}
