package com.yufeng.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.MovieTopPicVo;
import com.yufeng.bean.MoviesVo;
import com.yufeng.dao.impl.DaoImpl;
import com.yufeng.dao.impl.MovieDao;
@SuppressWarnings("serial")
public class TVIndexAction extends ActionSupport implements SessionAware {

	private Map session;
	private DaoImpl dao;
	private MovieDao movieDao;
	private ArrayList<MoviesVo> hotPlayerTop;//热播榜
	private ArrayList<MoviesVo> concernsTop;//经典榜
	private ArrayList<MoviesVo> hotRecommend;//热门推荐
	private ArrayList<MovieTopPicVo> hotLeft;
	private ArrayList<MovieTopPicVo> hotReghit;
	public String showTV()throws Exception{
		dao.setPageViews(3);
		hotPlayerTop=movieDao.getHotPlayerTop(2,"keepNum",0,10);
		concernsTop=movieDao.getHotPlayerTop(2,"concerns",0,10);
		hotRecommend=movieDao.getHotPlayerTop(2,"voteLike",0,12);
		hotLeft=movieDao.getHotPlayerPic(2,"updateTime",0,6);
		hotReghit=movieDao.getHotPlayerPic(2,"updateTime",6,6);
		return "showtv";
	}

	public DaoImpl getDao() {
		return dao;
	}

	public void setDao(DaoImpl dao) {
		this.dao = dao;
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

	public ArrayList<MoviesVo> getHotRecommend() {
		return hotRecommend;
	}

	public void setHotRecommend(ArrayList<MoviesVo> hotRecommend) {
		this.hotRecommend = hotRecommend;
	}

	public ArrayList<MoviesVo> getHotPlayerTop() {
		return hotPlayerTop;
	}

	public void setHotPlayerTop(ArrayList<MoviesVo> hotPlayerTop) {
		this.hotPlayerTop = hotPlayerTop;
	}

	public ArrayList<MoviesVo> getConcernsTop() {
		return concernsTop;
	}

	public void setConcernsTop(ArrayList<MoviesVo> concernsTop) {
		this.concernsTop = concernsTop;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public MovieDao getMovieDao() {
		return movieDao;
	}

	public void setMovieDao(MovieDao movieDao) {
		this.movieDao = movieDao;
	}
}
