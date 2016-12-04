package com.yufeng.bean;

import java.io.Serializable;
/**
 * “Ù¿÷∑÷¿‡
 * @author Administrator
 *
 */
public class MusicCateVo implements Serializable {

	private int ID;
	private String areaName;
	public MusicCateVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MusicCateVo(int id, String areaName) {
		super();
		ID = id;
		this.areaName = areaName;
	}
	public int getID() {
		return ID;
	}
	public void setID(int id) {
		ID = id;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
}
