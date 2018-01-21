package com.littleleaf.ubmsystem.admin.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.littleleaf.ubmsystem.dao.DeviceDao;
import com.littleleaf.ubmsystem.dao.UserDao;
import com.littleleaf.ubmsystem.domain.Device;
import com.littleleaf.ubmsystem.domain.User;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateDevice extends ActionSupport {
	private String id;
	private int remainCoinNum;
	private int occupiedVolume;
	private int donationNumber;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getRemainCoinNum() {
		return remainCoinNum;
	}

	public void setRemainCoinNum(int remainCoinNum) {
		this.remainCoinNum = remainCoinNum;
	}

	public int getOccupiedVolume() {
		return occupiedVolume;
	}

	public void setOccupiedVolume(int occupiedVolume) {
		this.occupiedVolume = occupiedVolume;
	}

	public int getDonationNumber() {
		return donationNumber;
	}

	public void setDonationNumber(int donationNumber) {
		this.donationNumber = donationNumber;
	}

	public String check() throws Exception {
		Device d = new DeviceDao().getDeviceById(id);
		remainCoinNum = d.getRemainCoinNum();
		occupiedVolume = d.getOccupiedVolume();
		donationNumber = d.getDonationNumber();
		
		return SUCCESS;
	}

	@Override
	public String execute() throws Exception {
		// 解决乱码，用于页面输出
		HttpServletResponse response = null;
		response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		try {
			Device d = new Device();
			
			d.setId(id);
			d.setDonationNumber(donationNumber);
			d.setOccupiedVolume(occupiedVolume);
			d.setRemainCoinNum(remainCoinNum);
			System.out.println(d);
			new DeviceDao().updateDevice(d);
			
			out.print("<script language='javascript'>alert('修改成功！');window.location='deviceInfoManage.jsp';</script>");
			out.flush();
			out.close();
		} catch (Exception e) {
			out.print("<script language='javascript'>alert('修改失败！您的输入不合法！');window.location='deviceInfoManage.jsp';</script>");
			out.flush();
			out.close();
		}
		
		return SUCCESS;
	}
}
