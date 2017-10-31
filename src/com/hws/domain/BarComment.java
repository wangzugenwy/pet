package com.hws.domain;

public class BarComment {
	private int id;
	private int titleid;
	private String username;
	private String contexts;
	private String time;

	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public BarComment(){
		
	}
	public BarComment(int titleid, String username, String contexts) {
		super();
		this.titleid = titleid;
		this.username = username;
		this.contexts = contexts;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTitleid() {
		return titleid;
	}
	public void setTitleid(int titleid) {
		this.titleid = titleid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getContexts() {
		return contexts;
	}
	public void setContexts(String contexts) {
		this.contexts = contexts;
	}
}
