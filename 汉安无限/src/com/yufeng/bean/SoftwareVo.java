package com.yufeng.bean;

import java.io.Serializable;
import java.util.Date;
/**
 * 
 * @author zj
 * 2012-5-9 上午10:21:43
 */
public class SoftwareVo implements Serializable{
	private int id;
	private String softName;
	private String size;
	private String createTime;
	private String image;
	private String path;
	private String intro;
	private int cid;
	private String cateName;
	//private String smallCateName;
	
	public SoftwareVo(){}
	
	


	public SoftwareVo(int id, String softName, String size, String createTime,
			String image, String path, String intro, int cid, String cateName) {
		super();
		this.id = id;
		this.softName = softName;
		this.size = size;
		this.createTime = createTime;
		this.image = image;
		this.path = path;
		this.intro = intro;
		this.cid = cid;
		this.cateName = cateName;
	}




	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSoftName() {
		return softName;
	}
	public void setSoftName(String softName) {
		this.softName = softName;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	/*public String getSmallCateName() {
		return smallCateName;
	}

	public void setSmallCateName(String smallCateName) {
		this.smallCateName = smallCateName;
	}*/


	public String getCreateTime() {
		return createTime;
	}


	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	
	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}
}
