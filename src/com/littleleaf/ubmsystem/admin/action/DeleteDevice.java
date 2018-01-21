package com.littleleaf.ubmsystem.admin.action;

import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.littleleaf.ubmsystem.dao.DeviceDao;
import com.littleleaf.ubmsystem.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteDevice extends ActionSupport {
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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
			new DeviceDao().deleteDevice(id);
			out.print("<script language='javascript'>alert('删除成功！');window.location='deviceInfoManage.jsp';</script>");
			out.flush();
			out.close();
		} catch (Exception e) {
			out.print("<script language='javascript'>alert('删除失败！请仔细检查您的信息！');window.location='deviceInfoManage.jsp';</script>");
			out.flush();
			out.close();
		}

		return SUCCESS;
	}
}
