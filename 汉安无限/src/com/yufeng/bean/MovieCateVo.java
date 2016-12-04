package com.yufeng.bean;

import java.io.Serializable;
/**
 * ��Ƶ�����磺���ӡ���Ӱ������������
 * @author Administrator
 *
 */
public class MovieCateVo implements Serializable{

	private int ID;
	private String cateSname;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getCateSname() {
		return cateSname;
	}
	public void setCateSname(String cateSname) {
		this.cateSname = cateSname;
	}
	
	
	
	
}
