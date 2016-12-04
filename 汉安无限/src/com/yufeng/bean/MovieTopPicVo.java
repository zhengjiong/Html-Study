package com.yufeng.bean;

import java.io.Serializable;

public class MovieTopPicVo implements Serializable {

	private String movieName;
	private String mainPic;
	private String directName;
	private int ID;
	private int address;
	private String picPath;
	public MovieTopPicVo(String movieName, String mainPic, String directName,
			int iD, int address, String picPath) {
		super();
		this.movieName = movieName;
		this.mainPic = mainPic;
		this.directName = directName;
		ID = iD;
		this.address = address;
		this.picPath = picPath;
	}
	public MovieTopPicVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getMainPic() {
		return mainPic;
	}
	public void setMainPic(String mainPic) {
		this.mainPic = mainPic;
	}
	public String getDirectName() {
		return directName;
	}
	public void setDirectName(String directName) {
		this.directName = directName;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getAddress() {
		return address;
	}
	public void setAddress(int address) {
		this.address = address;
	}
	public String getPicPath() {
		return picPath;
	}
	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}
	
}
