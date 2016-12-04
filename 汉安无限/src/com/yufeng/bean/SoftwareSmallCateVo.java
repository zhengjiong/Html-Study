package com.yufeng.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 软件小分类
 * @author zj
 * 2012-5-9 上午10:17:31
 */
public class SoftwareSmallCateVo implements Serializable{
	
	private int id;
	private String smallCateName;
	private int bigCateId;
	
	public SoftwareSmallCateVo(){}
	
	public SoftwareSmallCateVo(int id, String smallCateName, int bigCateId) {
		this.id = id;
		this.smallCateName = smallCateName;
		this.bigCateId = bigCateId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSmallCateName() {
		return smallCateName;
	}
	public void setSmallCateName(String smallCateName) {
		this.smallCateName = smallCateName;
	}
	public int getBigCateId() {
		return bigCateId;
	}
	public void setBigCateId(int bigCateId) {
		this.bigCateId = bigCateId;
	}
	
}
