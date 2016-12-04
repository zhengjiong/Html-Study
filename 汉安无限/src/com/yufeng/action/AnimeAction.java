package com.yufeng.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.MovieTopPicVo;
import com.yufeng.bean.MoviesVo;
import com.yufeng.dao.impl.DaoImpl;
import com.yufeng.dao.impl.MovieDaoImpl;
@SuppressWarnings("serial")
public class AnimeAction extends ActionSupport implements SessionAware {
	private MovieDaoImpl moviedao;
	private Map session;
	//热播
	private ArrayList<MoviesVo> hotanimelist;
	//好评
	private ArrayList<MoviesVo> goodanimelist;
	//热门推荐
	private ArrayList<MoviesVo> suggestanimelist;
	private ArrayList<MovieTopPicVo> hotLeft;
	private ArrayList<MovieTopPicVo> hotReghit;
	private DaoImpl dao;
	public String getanime()throws Exception{
		dao.setPageViews(5);
		hotanimelist=moviedao.getHotAnime(1);
		goodanimelist=moviedao.getHotAnime(2);
		suggestanimelist=moviedao.getSuggestAnime();
		hotLeft=moviedao.getHotPlayerPic(3,"updateTime",0,6);
		hotReghit=moviedao.getHotPlayerPic(3,"updateTime",6,6);
		return "animelist";
	}
	public ArrayList<MovieTopPicVo> getHotLeft() {
		return hotLeft;
	}
	public void setHotLeft(ArrayList<MovieTopPicVo> hotLeft) {
		this.hotLeft = hotLeft;
	}
	public ArrayList<MovieTopPicVo> getHotReghit() {
		return hotReghit;
	}
	public void setHotReghit(ArrayList<MovieTopPicVo> hotReghit) {
		this.hotReghit = hotReghit;
	}
	public DaoImpl getDao() {
		return dao;
	}
	public void setDao(DaoImpl dao) {
		this.dao = dao;
	}
	public MovieDaoImpl getMoviedao() {
		return moviedao;
	}
	public void setMoviedao(MovieDaoImpl moviedao) {
		this.moviedao = moviedao;
	}
	public Map getSession() {
		return session;
	}
	public void setSession(Map session) {
		this.session = session;
	}
	public ArrayList<MoviesVo> getHotanimelist() {
		return hotanimelist;
	}
	public void setHotanimelist(ArrayList<MoviesVo> hotanimelist) {
		this.hotanimelist = hotanimelist;
	}
	public ArrayList<MoviesVo> getGoodanimelist() {
		return goodanimelist;
	}
	public void setGoodanimelist(ArrayList<MoviesVo> goodanimelist) {
		this.goodanimelist = goodanimelist;
	}
	public ArrayList<MoviesVo> getSuggestanimelist() {
		return suggestanimelist;
	}
	public void setSuggestanimelist(ArrayList<MoviesVo> suggestanimelist) {
		this.suggestanimelist = suggestanimelist;
	}
	
}
