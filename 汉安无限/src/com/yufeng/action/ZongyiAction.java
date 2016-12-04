package com.yufeng.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.MoviesVo;
import com.yufeng.dao.impl.DaoImpl;
import com.yufeng.dao.impl.MovieDaoImpl;
@SuppressWarnings("serial")
public class ZongyiAction extends ActionSupport implements SessionAware {
	private MovieDaoImpl moviedao;
	private Map session;
	//内地综艺
	private ArrayList<MoviesVo> chinazy;
	//港台综艺
	private ArrayList<MoviesVo> gangtaizy;
	//热门综艺
	private ArrayList<MoviesVo> hostzy;
	private DaoImpl dao;
	public String getzongyiAll()throws Exception{
		chinazy=moviedao.getChinazy(1);
		gangtaizy=moviedao.getChinazy(2);
		hostzy=moviedao.getSuggestzy();
		dao.setPageViews(4);
		return "zongyiindexs";
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
	
	public MovieDaoImpl getMoviedao() {
		return moviedao;
	}

	public void setMoviedao(MovieDaoImpl moviedao) {
		this.moviedao = moviedao;
	}

	public ArrayList<MoviesVo> getChinazy() {
		return chinazy;
	}

	public void setChinazy(ArrayList<MoviesVo> chinazy) {
		this.chinazy = chinazy;
	}

	public ArrayList<MoviesVo> getGangtaizy() {
		return gangtaizy;
	}

	public void setGangtaizy(ArrayList<MoviesVo> gangtaizy) {
		this.gangtaizy = gangtaizy;
	}

	public ArrayList<MoviesVo> getHostzy() {
		return hostzy;
	}

	public void setHostzy(ArrayList<MoviesVo> hostzy) {
		this.hostzy = hostzy;
	}
	
}
