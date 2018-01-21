package com.littleleaf.ubmsystem.admin.action;

import java.util.List;

import com.littleleaf.ubmsystem.dao.DeviceDao;
import com.littleleaf.ubmsystem.dao.UserDao;
import com.littleleaf.ubmsystem.domain.Device;
import com.littleleaf.ubmsystem.domain.User;
import com.opensymphony.xwork2.ActionSupport;

public class SelectDevice extends ActionSupport {
	private List<Device> list;

	public List<Device> getList() {
		return list;
	}

	public void setList(List<Device> list) {
		this.list = list;
	}
	
	@Override
	public String execute() throws Exception {
		list = new DeviceDao().listAllDevices();
		
		return SUCCESS;
	}
}
