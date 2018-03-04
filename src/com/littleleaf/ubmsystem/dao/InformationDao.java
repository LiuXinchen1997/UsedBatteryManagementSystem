package com.littleleaf.ubmsystem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.littleleaf.ubmsystem.domain.Device;
import com.littleleaf.ubmsystem.domain.Information;
import com.littleleaf.ubmsystem.util.DBUtil;

public class InformationDao {
	private static final String INFO = "info";
	
	public List<Information> listAllnformation(){
		List<Information> list = new ArrayList<Information>();
		String sql = "select* from " + INFO;
		Connection conn = DBUtil.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Information info = new Information();
				info.setTitle(rs.getString(2));
				info.setDate(rs.getDate(3));
				info.setContent(rs.getString(4));
				info.setPicUrl(rs.getString(5));
				list.add(info);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
		
	}

}
