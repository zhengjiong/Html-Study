package com.yufeng.bean;

import java.io.Serializable;
/**
 * Õ∂ÀﬂΩ®“È
 * @author Administrator
 *
 */
public class SuggestsVo implements Serializable {

	private int ID;
	private int userID;
	private String titles;
	private String contents;
	private String anwsers;
	
	public SuggestsVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SuggestsVo(int id, int userID, String titles, String contents,
			String anwsers) {
		super();
		ID = id;
		this.userID = userID;
		this.titles = titles;
		this.contents = contents;
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
