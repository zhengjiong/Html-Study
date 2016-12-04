package com.yufeng.bean;

import java.io.Serializable;
import java.util.Date;
/**
 * 软件大分类
 * @author zj
 * 2012-5-9 上午10:17:55
 */
public class SoftwareBigCateVo implements Serializable{
	private int id;
	private String cateName;
	
	public SoftwareBigCateVo(){}
	
	public SoftwareBigCateVo(int id, String cateName) {
		this.id = id;
		this.cateName = cateName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	
	
}
