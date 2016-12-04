package com.yufeng.bean;

import java.io.Serializable;
/**
 * 公告信息
 * @author Administrator
 *
 */
public class PostMsgVo implements Serializable {

	private int ID;
	private String messages;
	private String Title;
	private String creatTime;
	public PostMsgVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public PostMsgVo(int id, String messages, String title, String creatTime) {
		super();
		ID = id;
		this.messages = messages;
		Title = title;
		this.creatTime = creatTime;
	}

	public int getID() {
		return ID;
	}
	public void setID(int id) {
		ID = id;
	}
	public String getMessages() {
		return messages;
	}
	public void setMessages(String messages) {
		this.messages = messages;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(String creatTime) {
		this.creatTime = creatTime;
	}
	
	
}
