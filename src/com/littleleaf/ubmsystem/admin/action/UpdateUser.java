package com.littleleaf.ubmsystem.admin.action;

import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.littleleaf.ubmsystem.dao.UserDao;
import com.littleleaf.ubmsystem.domain.User;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateUser extends ActionSupport {
	private int id;
	private String username;
	private String password;
	private String sex;
	private String tel;
	private String email;
	private String idnum;
	private int point;
	
	
	
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIdnum() {
		return idnum;
	}

	public void setIdnum(String idnum) {
		this.idnum = idnum;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}
	
	

	public String check() throws Exception {
		User user = new UserDao().getByUsername(username);
		username = user.getUsername();
		email = user.getEmail();
		tel = user.getTel();
		idnum = user.getIdnum();
		sex = user.getSex();
		
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
			User user = new User();
			
			user.setEmail(email);
			user.setId(id);
			user.setIdnum(idnum);
			user.setPassword(password);
			user.setPoint(point);
			user.setSex(sex);
			user.setTel(tel);
			user.setUsername(username);
			
			new UserDao().modifyPersonalInfo(user);
			out.print("<script language='javascript'>alert('修改成功！');window.location='userInfoManage.jsp';</script>");
			out.flush();
			out.close();
		} catch (Exception e) {
			out.print("<script language='javascript'>alert('修改失败！您的输入不合法！');window.location='userInfoManage.jsp';</script>");
			out.flush();
			out.close();
		}
		
		return SUCCESS;
	}
}
