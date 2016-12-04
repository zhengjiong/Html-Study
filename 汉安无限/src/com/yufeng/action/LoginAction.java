package com.yufeng.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.UserVo;
import com.yufeng.dao.impl.DaoImpl;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport implements SessionAware{
	private DaoImpl dao;
	private Map session;
	public String username;
	public String passwd;
	private UserVo uservo;
	public String login() throws Exception {
			UserVo user=dao.loginUser(username, passwd);
			if(user!=null){
			session.put("userName", username);
			session.put("userID", user.getID());
			session.put("login", "true");
			return "loginSuccess";
			}
		
		addFieldError("filedInfo", "用户密码错误，请重新输入");
		return "loginFail";
	}

	public UserVo getUservo() {
		return uservo;
	}

	public void setUservo(UserVo uservo) {
		this.uservo = uservo;
	}

	public DaoImpl getDao() {
		return dao;
	}

	public void setDao(DaoImpl dao) {
		this.dao = dao;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	
}
