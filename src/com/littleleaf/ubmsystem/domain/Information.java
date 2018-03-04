package com.littleleaf.ubmsystem.domain;

import java.sql.Date;

public class Information {
	private String title;
	private Date dates;
	private String content;
	private String picUrl;

	public Information(String title, Date dates, String content, String picUrl) {
		super();
		this.title = title;
		this.dates = dates;
		this.content = content;
		this.picUrl = picUrl;
	}

	public Information() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Information [title=" + title + ", dates=" + dates + ", content=" + content + ", picUrl=" + picUrl + "]";
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return dates;
	}

	public void setDate(Date date) {
		this.dates = date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

}
