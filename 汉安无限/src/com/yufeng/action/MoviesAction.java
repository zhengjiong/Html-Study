package com.yufeng.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.dao.impl.DaoImpl;
@SuppressWarnings("serial")
public class MoviesAction extends ActionSupport implements SessionAware {

	private DaoImpl dao;
	private Map session;
	
	
	
	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public DaoImpl getDao() {
		return dao;
	}

	public void setDao(DaoImpl dao) {
		this.dao = dao;
	}
}
