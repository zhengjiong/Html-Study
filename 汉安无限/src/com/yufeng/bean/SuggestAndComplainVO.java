package com.yufeng.bean;

import java.io.Serializable;

public class SuggestAndComplainVO implements Serializable {
	
	private int ID;
	//�û�ID
	private int userID;
	//Ͷ�߽��������
	private String subject;
	//Ͷ�߽�������
	private String suggestMsg;
	private String titles;
	private String contents;
	private String anwsers;
	
	public SuggestAndComplainVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public SuggestAndComplainVO(int id, int userID, String subject,
			String suggestMsg, String titles, String contents, String anwsers) {
		super();
		ID = id;
		this.userID = userID;
		this.subject = subject;
		this.suggestMsg = suggestMsg;
		this.titles = titles;
		this.contents = contents;
		this.anwsers = anwsers;
	}

	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
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
	public String getTitles() {
		return titles;
	}
	public void setTitles(String titles) {
		this.titles = titles;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getAnwsers() {
		return anwsers;
	}
	public void setAnwsers(String anwsers) {
		this.anwsers = anwsers;
	}

}
