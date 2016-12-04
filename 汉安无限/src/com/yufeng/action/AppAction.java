package com.yufeng.action;


import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.YDApp;
import com.yufeng.dao.impl.AppDao;

public class AppAction extends ActionSupport implements SessionAware {

	private Map session;
	private AppDao appDao;
	private ArrayList<YDApp> game1;
	private ArrayList<YDApp> game2;
	private ArrayList<YDApp> game3;
	private ArrayList<YDApp> game4;
	private ArrayList<YDApp> game5;
	private ArrayList<YDApp> game6;
	private ArrayList<YDApp> game7;
	private ArrayList<YDApp> gameList;
	private YDApp game;
	private int id;
	private String flag;
	
	public String showApp() throws Exception{
		flag="123";
		game1=appDao.getAppByType(10);
		game2=appDao.getAppByType(11);
		game3=appDao.getAppByType(12);
		game4=appDao.getAppByType(13);
		game5=appDao.getAppByType(14);
		game6=appDao.getAppByType(15);
		game7=appDao.getAppByType(16);
		
		return "showapp";
	}

	public String showGameDetal() throws Exception{
		game=appDao.getApp(id);
		gameList=appDao.getAppByType(game.getAppType());
		return "showGameDetal";
	}
	
	

	public ArrayList<YDApp> getGameList() {
		return gameList;
	}

	public void setGameList(ArrayList<YDApp> gameList) {
		this.gameList = gameList;
	}

	public YDApp getGame() {
		return game;
	}

	public void setGame(YDApp game) {
		this.game = game;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ArrayList<YDApp> getGame1() {
		return game1;
	}



	public void setGame1(ArrayList<YDApp> game1) {
		this.game1 = game1;
	}



	public ArrayList<YDApp> getGame2() {
		return game2;
	}



	public void setGame2(ArrayList<YDApp> game2) {
		this.game2 = game2;
	}



	public ArrayList<YDApp> getGame3() {
		return game3;
	}



	public void setGame3(ArrayList<YDApp> game3) {
		this.game3 = game3;
	}



	public ArrayList<YDApp> getGame4() {
		return game4;
	}



	public void setGame4(ArrayList<YDApp> game4) {
		this.game4 = game4;
	}



	public ArrayList<YDApp> getGame5() {
		return game5;
	}



	public void setGame5(ArrayList<YDApp> game5) {
		this.game5 = game5;
	}



	public ArrayList<YDApp> getGame6() {
		return game6;
	}



	public void setGame6(ArrayList<YDApp> game6) {
		this.game6 = game6;
	}



	public ArrayList<YDApp> getGame7() {
		return game7;
	}



	public void setGame7(ArrayList<YDApp> game7) {
		this.game7 = game7;
	}



	public String getFlag() {
		return flag;
	}



	public void setFlag(String flag) {
		this.flag = flag;
	}



	public AppDao getAppDao() {
		return appDao;
	}

	public void setAppDao(AppDao appDao) {
		this.appDao = appDao;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}
}
