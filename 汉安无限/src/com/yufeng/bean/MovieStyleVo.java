package com.yufeng.bean;

import java.io.Serializable;
/**
 * ��Ƶ �磺��Ӱ�ֻ�������������ȡ�����
 * @author Administrator
 *
 */
public class MovieStyleVo implements Serializable {

	private int ID;
	private String cateSname;
	
	public MovieStyleVo(int id, String cateSname) {
		super();
		ID = id;
		this.cateSname = cateSname;
	}
	public MovieStyleVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getID() {
		return ID;
	}
	public void setID(int id) {
		ID = id;
	}
	public String getCateSname() {
		return cateSname;
	}
	public void setCateSname(String cateSname) {
		this.cateSname = cateSname;
	}
	
	
}
