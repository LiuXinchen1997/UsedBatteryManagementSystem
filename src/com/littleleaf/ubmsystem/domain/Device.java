package com.littleleaf.ubmsystem.domain;

public class Device {
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
	@Override
	public String toString() {
		return "Device [id=" + id + ", remainCoinNum=" + remainCoinNum + ", occupiedVolume=" + occupiedVolume
				+ ", donationNumber=" + donationNumber + "]";
	}
	
}
