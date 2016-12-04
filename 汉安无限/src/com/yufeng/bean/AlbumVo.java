package com.yufeng.bean;

import java.io.Serializable;
/**
 * ����ר��
 * @author zhengjiong
 * 2012-3-16 13:11:40
 */
public class AlbumVo implements Serializable{
	
	private int ID;
	private String albumName;		//ר����
	private String singer;			//����
	private String company;			//��Ƭ��˾
	private String issueDate;		//����ʱ��
	private String cover;			//ר������ͼ
	private String intro;			//���
	
	
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
