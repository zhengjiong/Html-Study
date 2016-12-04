package com.yufeng.bean;

import java.io.Serializable;
/**
 * ¡Ù—‘–≈œ¢
 * @author Administrator
 *
 */
public class LeavesVo implements Serializable {

	private int ID;
	private int userID;
	private String msgs;
	private int leaverID;
	private String username;
	private String anwsers;
	
	public LeavesVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public LeavesVo(int id, int userID, String msgs, int leaverID,
			String username, String anwsers) {
		super();
		ID = id;
		this.userID = userID;
		this.msgs = msgs;
		this.leaverID = leaverID;
		this.username = username;
		this.anwsers = anwsers;
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
	public String getMsgs() {
		return msgs;
	}
	public void setMsgs(String msgs) {
		this.msgs = msgs;
	}
	public int getLeaverID() {
		return leaverID;
	}
	public void setLeaverID(int leaverID) {
		this.leaverID = leaverID;
	}
	public String getAnwsers() {
		return anwsers;
	}
	public void setAnwsers(String anwsers) {
		this.anwsers = anwsers;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
}
