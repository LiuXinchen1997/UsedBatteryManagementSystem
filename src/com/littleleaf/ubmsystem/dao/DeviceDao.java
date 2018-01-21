package com.littleleaf.ubmsystem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.littleleaf.ubmsystem.domain.Device;
import com.littleleaf.ubmsystem.domain.User;
import com.littleleaf.ubmsystem.util.DBUtil;

public class DeviceDao {
	private static final String TABLE = "device";
	
	public List<Device> listAllDevices() {
		List<Device> list = new ArrayList<Device>();
		String sql = "select * from " + TABLE;
		Connection conn = DBUtil.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Device d = new Device();
				d.setId(rs.getString(1));
				d.setRemainCoinNum(rs.getInt(2));
				d.setOccupiedVolume(rs.getInt(3));
				d.setDonationNumber(rs.getInt(4));
				
				list.add(d);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public Device getDeviceById(String id) {
		Device d = null;
		String sql = "select * from " + TABLE + " where id = ?";
		Connection conn = DBUtil.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				d = new Device();
				d.setId(rs.getString(1));
				d.setRemainCoinNum(rs.getInt(2));
				d.setOccupiedVolume(rs.getInt(3));
				d.setDonationNumber(rs.getInt(4));				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return d;
	}
	
	public void addDevice(String id) {
		String sql = "insert into " + TABLE + " (id) values(?)";
		Connection conn = DBUtil.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteDevice(String id) {
		String sql = "delete from " + TABLE + " where id = ?";
		Connection conn = DBUtil.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateDevice(Device d) {
		String sql = "update " + TABLE + " set remainCoinNum = ?, occupiedVolume = ?, donationNumber = ? where id = ?";
		Connection conn = DBUtil.getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, d.getRemainCoinNum());
			ps.setInt(2, d.getOccupiedVolume());
			ps.setInt(3, d.getDonationNumber());
			ps.setString(4, d.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
	}
	
}
