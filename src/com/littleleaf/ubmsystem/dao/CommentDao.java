package com.littleleaf.ubmsystem.dao;

import java.util.ArrayList;
import java.util.List;

import com.littleleaf.ubmsystem.domain.Comment;
import com.littleleaf.ubmsystem.domain.Information;
import com.littleleaf.ubmsystem.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CommentDao {
	
	private static final String COMMENT = "comment";

	public List<Comment> listAllComment(){
		
		List<Comment> list = new ArrayList<Comment>();
		String sql = "select * from "+COMMENT;
		Connection conn = DBUtil.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Comment comment = new Comment();
				comment.setTitle(rs.getString(2));
				comment.setUserName(rs.getString(3));
				comment.setDates(rs.getDate(4));
				comment.setContent(rs.getString(5));
				list.add(comment);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
