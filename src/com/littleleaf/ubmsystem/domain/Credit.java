package com.littleleaf.ubmsystem.domain;

public class Credit {
	private int cid;
	private String cdes;

	public Credit(int cid, String cdes) {
		super();
		this.cid = cid;
		this.cdes = cdes;
	}

	public Credit() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCdes() {
		return cdes;
	}

	public void setCdes(String cdes) {
		this.cdes = cdes;
	}

	@Override
	public String toString() {
		return "Credit [cid=" + cid + ", cdes=" + cdes + "]";
	}

}
