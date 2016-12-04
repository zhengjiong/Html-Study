package com.yufeng.bean;

import java.io.Serializable;
/**
 * 网上调查，最喜欢的电影
 * @author Administrator
 *
 */
public class SuggestMovVo implements Serializable {

	private int ID;
	private String likeMovie;
	private String likereason;
	private int userID;
	private int movOrmus;
	public SuggestMovVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public SuggestMovVo(int id, String likeMovie, String likereason,
			int userID, int movOrmus) {
		super();
		ID = id;
		this.likeMovie = likeMovie;
		this.likereason = likereason;
		this.userID = userID;
		this.movOrmus = movOrmus;
	}

	public int getID() {
		return ID;
	}
	public void setID(int id) {
		ID = id;
	}
	public String getLikeMovie() {
		return likeMovie;
	}
	public void setLikeMovie(String likeMovie) {
		this.likeMovie = likeMovie;
	}
	public String getLikereason() {
		return likereason;
	}
	public void setLikereason(String likereason) {
		this.likereason = likereason;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getMovOrmus() {
		return movOrmus;
	}
	public void setMovOrmus(int movOrmus) {
		this.movOrmus = movOrmus;
	}
	
	
}
