package com.yufeng.bean;

import java.io.Serializable;

/**
 * 音乐
 * @author Administrator
 *
 */
public class MusicVo implements Serializable{

	private int ID;
	//音乐名称
	private String musicName;
	//歌手
	private String roleName;
	//所属类别
	private String areaName;
	//时间
	private String createTime;
	//专辑名
	private String albumName;
	//音乐风格
	private String styleName;
	//上传者
	private String uploadName;
	//歌词
	private String musicWord;
	//类别ID
	private int cateID;
	//音乐风格ID
	private int styleID;
	//专辑ID
	private int albumID;
	//音乐路径
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
