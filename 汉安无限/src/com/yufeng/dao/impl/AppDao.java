package com.yufeng.dao.impl;

import java.util.ArrayList;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.yufeng.bean.YDApp;

public class AppDao extends SqlMapClientDaoSupport {
	private ArrayList<YDApp> list = new ArrayList<YDApp>();
	
	public ArrayList<YDApp> getAppByType(int type) throws Exception{
		String sql = "SELECT * FROM  ydApplication where appType="+type +" limit 0,10";
		list = (ArrayList<YDApp>) getSqlMapClient()
				.queryForList("getApp", sql);
		if (list != null && list.size() != 0) {
			return list;
		}
		return null;
	}
	public YDApp getApp(int id) throws Exception{
		String sql = "SELECT * FROM  ydApplication where id="+id ;
		YDApp app =  (YDApp) getSqlMapClient()
				.queryForObject("getApp", sql);
		if (app != null ) {
			return app;
		}
		return null;
	}
	
	
}
