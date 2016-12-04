package com.yufeng.bean;

import java.io.Serializable;
/**
 * 用户
 * @author Administrator
 *
 */
public class UserVo implements Serializable{

	private int ID;
	//注册用户名，不可重复，用于登录
	private String username;
	//密码
	private String password;
	//邮箱
	private String usermail;
	//判断是一般客户还是管理员
	private int powers;
	//年龄
	private int age;
	//性别
	private String sex;
	//爱好
	private String hobbys;
	//个人签名
	private String msg;
	
	public UserVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UserVo(int id, String username, String password, String usermail,
			int age, String sex, String hobbys,int powers,String msg) {
		super();
		ID = id;
		this.username = username;
		this.password = password;
		this.usermail = usermail;
		this.age = age;
		this.sex = sex;
		this.hobbys = hobbys;
		this.powers=powers;
		this.msg=msg;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public String getHobbys() {
		return hobbys;
	}

	public void setHobbys(String hobbys) {
		this.hobbys = hobbys;
	}

	public int getID() {
		return ID;
	}
	public void setID(int id) {
		ID = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public int getPowers() {
		return powers;
	}

	public void setPowers(int powers) {
		this.powers = powers;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
