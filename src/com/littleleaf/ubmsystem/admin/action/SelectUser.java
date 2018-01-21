package com.littleleaf.ubmsystem.admin.action;

import java.util.List;

import com.littleleaf.ubmsystem.dao.UserDao;
import com.littleleaf.ubmsystem.domain.User;
import com.opensymphony.xwork2.ActionSupport;

public class SelectUser extends ActionSupport {
	private List<User> list;

	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}
	
	@Override
	public String execute() throws Exception {
		list = new UserDao().listAllUsers();
		
		return SUCCESS;
	}
}
