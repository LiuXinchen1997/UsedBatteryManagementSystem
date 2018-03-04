package com.littleleaf.ubmsystem.domain;

import java.sql.Date;

public class Comment {
	
	private String title;
	private String userName;
	private Date dates;
	private String content;
	
	public Comment(String title, String userName, Date dates, String content) {
		super();
		this.title = title;
		this.userName = userName;
		this.dates = dates;
		this.content = content;
	}
	
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "Comment [title=" + title + ", userName=" + userName + ", dates=" + dates + ", content=" + content + "]";
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public Date getDates() {
		return dates;
	}
	
	public void setDates(Date dates) {
		this.dates = dates;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}

}
