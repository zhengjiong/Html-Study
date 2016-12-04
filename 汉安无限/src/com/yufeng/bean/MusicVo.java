package com.yufeng.bean;

import java.io.Serializable;

/**
 * ����
 * @author Administrator
 *
 */
public class MusicVo implements Serializable{

	private int ID;
	//��������
	private String musicName;
	//����
	private String roleName;
	//�������
	private String areaName;
	//ʱ��
	private String createTime;
	//ר����
	private String albumName;
	//���ַ��
	private String styleName;
	//�ϴ���
	private String uploadName;
	//���
	private String musicWord;
	//���ID
	private int cateID;
	//���ַ��ID
	private int styleID;
	//ר��ID
	private int albumID;
	//����·��
	private String address;
	
	
	public MusicVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MusicVo(int iD, String musicName, String roleName, String areaName,
			String createTime, String albumName, String styleName,
			String uploadName, String musicWord, int cateID, int styleID,
			int albumID, String address) {
		super();
		ID = iD;
		this.musicName = musicName;
		this.roleName = roleName;
		this.areaName = areaName;
		this.createTime = createTime;
		this.albumName = albumName;
		this.styleName = styleName;
		this.uploadName = uploadName;
		this.musicWord = musicWord;
		this.cateID = cateID;
		this.styleID = styleID;
		this.albumID = albumID;
		this.address = address;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getID() {
		return ID;
	}
	public void setID(int id) {
		ID = id;
	}
	public String getMusicName() {
		return musicName;
	}
	public void setMusicName(String musicName) {
		this.musicName = musicName;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getCateID() {
		return areaName;
	}
	public void setCateID(String cateID) {
		this.areaName = cateID;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getStyleID() {
		return styleName;
	}
	public void setStyleID(String styleID) {
		this.styleName = styleID;
	}
	public String getUploadName() {
		return uploadName;
	}
	public void setUploadName(String uploadName) {
		this.uploadName = uploadName;
	}
	public String getMusicWord() {
		return musicWord;
	}
	public void setMusicWord(String musicWord) {
		this.musicWord = musicWord;
	}
	public String getAlbumName() {
		return albumName;
	}
	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}
	public String getCateName() {
		return areaName;
	}
	public void setCateName(String cateName) {
		this.areaName = cateName;
	}
	public String getStyleName() {
		return styleName;
	}
	public void setStyleName(String styleName) {
		this.styleName = styleName;
	}
	public int getAlbumID() {
		return albumID;
	}
	public void setAlbumID(int albumID) {
		this.albumID = albumID;
	}
	public void setCateID(int cateID) {
		this.cateID = cateID;
	}
	public void setStyleID(int styleID) {
		this.styleID = styleID;
	}
	
	
}
