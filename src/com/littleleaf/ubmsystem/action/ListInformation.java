package com.littleleaf.ubmsystem.action;

import java.util.ArrayList;
import java.util.List;

import com.littleleaf.ubmsystem.dao.InformationDao;
import com.littleleaf.ubmsystem.domain.Information;
import com.opensymphony.xwork2.ActionSupport;

public class ListInformation extends ActionSupport{
	private List<Information> list = new ArrayList<Information>();

	public List<Information> getList() {
		return list;
	}

	public void setList(List<Information> list) {
		this.list = list;
	}

	@Override
	public String execute() throws Exception {
		
		list = new InformationDao().listAllnformation();
		System.out.println("到ListInformation");
		return SUCCESS;
		
	}
	
	
}
