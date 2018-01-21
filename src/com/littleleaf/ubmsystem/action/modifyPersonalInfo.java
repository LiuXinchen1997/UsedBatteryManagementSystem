package com.littleleaf.ubmsystem.action;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.littleleaf.ubmsystem.dao.UserDao;
import com.littleleaf.ubmsystem.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class modifyPersonalInfo extends ActionSupport {
	private String email;
	private String tel;
	private String idnum;
	private String sex;
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getIdnum() {
		return idnum;
	}

	public void setIdnum(String idnum) {
		this.idnum = idnum;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String check() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = (Map)actionContext.get("session");
		
		User user = (User)session.get("user");
		if (user != null) {
			return "success";			
		} else {
			return "fail";
		}
	}
	
	@Override
	public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = (Map)actionContext.get("session");
		
		User user = (User)session.get("user");
		if (user == null) {
			return "fail";
		} else {			
			HttpServletResponse response = null;
			response = ServletActionContext.getResponse();
	        response.setContentType("text/html;charset=UTF-8");
	        response.setCharacterEncoding("UTF-8");
	        PrintWriter out = response.getWriter();
	        
	        User u = new User();
	        u.setUsername(user.getUsername());
	        u.setEmail(email);
	        u.setSex(sex);
	        u.setTel(tel);
	        u.setIdnum(idnum);
	        new UserDao().modifyPersonalInfo(u);
	        
	        u = new UserDao().getByUsername(u.getUsername());
	        session.put("user", u);
	        
			out.print("<script language='javascript'>alert('修改成功！');window.location='message.jsp';</script>");
	        out.flush();out.close();
	        return null;
		}
	}
}
