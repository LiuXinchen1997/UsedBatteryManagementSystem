package com.littleleaf.ubmsystem.action;

import java.util.ArrayList;
import java.util.List;

import com.littleleaf.ubmsystem.dao.CommentDao;
import com.littleleaf.ubmsystem.domain.Comment;
import com.opensymphony.xwork2.ActionSupport;

public class ListComment extends ActionSupport{
	
	private List<Comment> list = new ArrayList<Comment>();

	public List<Comment> getList() {
		return list;
	}

	public void setList(List<Comment> list) {
		this.list = list;
	}

	@Override
	public String execute() throws Exception {
		list = new CommentDao().listAllComment();
		System.out.println(list.isEmpty());
		System.out.println("进入ListComment");
		return SUCCESS;
	}
	
	
}
