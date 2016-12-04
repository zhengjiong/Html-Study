package com.yufeng.bean;

import java.io.Serializable;

public class YDApp implements Serializable {

	private int id;
	private String appName;
	private String appSize;
	private String updateTime;
	private String introduction;
	private String image;
	private String appPath;
	private int appType;
	private int hot;
	
	
	
	
	public int getAppType() {
		return appType;
	}
	public void setAppType(int appType) {
		this.appType = appType;
	}
	public int getHot() {
		return hot;
	}
	public void setHot(int hot) {
		this.hot = hot;
	}
	public YDApp(int id, String appName,  String updateTime,
			String introduction, String image, String appPath) {
		super();
		this.id = id;
		this.appName = appName;

		this.updateTime = updateTime;
		this.introduction = introduction;
		this.image = image;
		this.appPath = appPath;
	}
	public YDApp() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAppName() {
		return appName;
	}
	public void setAppName(String appName) {
		this.appName = appName;
	}
	
	public String getAppSize() {
		return appSize;
	}
	public void setAppSize(String appSize) {
		this.appSize = appSize;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getAppPath() {
		return appPath;
	}
	public void setAppPath(String appPath) {
		this.appPath = appPath;
	}
	
	
}
