package com.yufeng.bean;

import java.io.Serializable;

public class MoviesPathVO implements Serializable {
	private int ID;
	private String address;
	private int movieID;
	private int movieNum;
	
	
	public MoviesPathVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MoviesPathVO(int id, String address, int movieID, int movieNum) {
		super();
		ID = id;
		this.address = address;
		this.movieID = movieID;
		this.movieNum = movieNum;
	}

	public int getMovieNum() {
		return movieNum;
	}

	public void setMovieNum(int movieNum) {
		this.movieNum = movieNum;
	}

	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getMovieID() {
		return movieID;
	}
	public void setMovieID(int movieID) {
		this.movieID = movieID;
	}

}
