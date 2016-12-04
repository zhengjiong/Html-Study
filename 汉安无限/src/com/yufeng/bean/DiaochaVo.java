package com.yufeng.bean;

import java.io.Serializable;
/**
 * ÍøÉÏµ÷²é
 * @author Administrator
 *
 */
public class DiaochaVo implements Serializable{

	private int ID;
	private int userID;
	private String dc1;
	private String dc2;
	private String dc3;
	private String dc4;
	private String dc5;
	private String dc6;
	private String dc7;
	private String dc8;
	private String dc9;
	private String dc10;
	
	public DiaochaVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public DiaochaVo(int id, int userID, String dc1, String dc2, String dc3,
			String dc4, String dc5, String dc6, String dc7, String dc8,
			String dc9, String dc10) {
		super();
		ID = id;
		this.userID = userID;
		this.dc1 = dc1;
		this.dc2 = dc2;
		this.dc3 = dc3;
		this.dc4 = dc4;
		this.dc5 = dc5;
		this.dc6 = dc6;
		this.dc7 = dc7;
		this.dc8 = dc8;
		this.dc9 = dc9;
		this.dc10 = dc10;
	}

	public int getID() {
		return ID;
	}
	public void setID(int id) {
		ID = id;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getDc1() {
		return dc1;
	}
	public void setDc1(String dc1) {
		this.dc1 = dc1;
	}
	public String getDc2() {
		return dc2;
	}
	public void setDc2(String dc2) {
		this.dc2 = dc2;
	}
	public String getDc3() {
		return dc3;
	}
	public void setDc3(String dc3) {
		this.dc3 = dc3;
	}
	public String getDc4() {
		return dc4;
	}
	public void setDc4(String dc4) {
		this.dc4 = dc4;
	}
	public String getDc5() {
		return dc5;
	}
	public void setDc5(String dc5) {
		this.dc5 = dc5;
	}
	public String getDc6() {
		return dc6;
	}
	public void setDc6(String dc6) {
		this.dc6 = dc6;
	}
	public String getDc7() {
		return dc7;
	}
	public void setDc7(String dc7) {
		this.dc7 = dc7;
	}
	public String getDc8() {
		return dc8;
	}
	public void setDc8(String dc8) {
		this.dc8 = dc8;
	}
	public String getDc9() {
		return dc9;
	}
	public void setDc9(String dc9) {
		this.dc9 = dc9;
	}
	public String getDc10() {
		return dc10;
	}
	public void setDc10(String dc10) {
		this.dc10 = dc10;
	}
	
}
