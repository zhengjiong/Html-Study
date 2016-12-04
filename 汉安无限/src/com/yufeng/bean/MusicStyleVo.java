package com.yufeng.bean;

import java.io.Serializable;
/**
 * 音乐风格分类
 * @author Administrator
 *
 */
public class MusicStyleVo implements Serializable {

	private int ID;
	private String styleName;
	public MusicStyleVo() {
		super();
	}
	public MusicStyleVo(int id, String styleName) {
		super();
		ID = id;
		this.styleName = styleName;
	}
	public int getID() {
		return ID;
	}
	public void setID(int id) {
		ID = id;
	}
	public String getStyleName() {
		return styleName;
	}
	public void setStyleName(String styleName) {
		this.styleName = styleName;
	}
	
	
}
