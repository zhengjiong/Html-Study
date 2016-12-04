package com.yufeng.bean;

import java.io.Serializable;
/**
 * 投诉建议
 * @author Administrator
 *
 */
public class ComplainVo implements Serializable {
	private int ID;
	//用户ID
	private int userID;
	//投诉建议的主题
	private String subject;
	//投诉建议内容
	private String suggestMsg;
	public ComplainVo(int id, int userID, String subject, String suggestMsg) {
		super();
		ID = id;
		this.userID = userID;
		this.subject = subject;
		this.suggestMsg = suggestMsg;
	}
	public ComplainVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getID() {
		return ID;
	}
	public void setID(int id) {
		ID = id;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getSuggestMsg() {
		return suggestMsg;
	}
	public void setSuggestMsg(String suggestMsg) {
		this.suggestMsg = suggestMsg;
	}
	
	
}
