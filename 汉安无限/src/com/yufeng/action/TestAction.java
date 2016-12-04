package com.yufeng.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {
	private static int i = 0;
	@Override
	public String execute() throws Exception {
		
		System.out.println("--------------------->"+(++i));
		
		return null;
	}

}
