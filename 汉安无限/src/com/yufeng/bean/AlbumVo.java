package com.yufeng.bean;

import java.io.Serializable;
/**
 * 音乐专辑
 * @author zhengjiong
 * 2012-3-16 13:11:40
 */
public class AlbumVo implements Serializable{
	
	private int ID;
	private String albumName;		//专辑名
	private String singer;			//歌手
	private String company;			//唱片公司
	private String issueDate;		//发行时间
	private String cover;			//专辑封面图
	private String intro;			//简介
	
	
	public AlbumVo() {
		super();
		// TODO Auto-generated constructor stub
	}


	public AlbumVo(int ID, String albumName, String company, String issueDate, String cover)
	{
		this.ID = ID;
		this.albumName = albumName;
		this.company = company;
		this.issueDate = issueDate;
		this.cover = cover;
	}

	
	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getAlbumName() {
		return albumName;
	}

	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}
	
}
