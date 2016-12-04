package com.yufeng.action;

import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.MovieCateVo;
import com.yufeng.bean.MovieTopPicVo;
import com.yufeng.bean.MoviesVo;
import com.yufeng.dao.impl.DaoImpl;
import com.yufeng.dao.impl.MovieDao;
@SuppressWarnings("serial")
public class MovieIndexAction extends ActionSupport implements SessionAware {
	private Map session;
	private MovieDao movieDao;
	private DaoImpl dao;
	private ArrayList<MovieCateVo> movieCate;
	private ArrayList<MoviesVo> hotPlayerTop;
	private ArrayList<MoviesVo> praiseTop;
	private ArrayList<MoviesVo> roleMovie1;
	private ArrayList<MoviesVo> roleMovie2;
	private ArrayList<MoviesVo> roleMovie3;
	private ArrayList<MoviesVo> roleMovie4;
	private ArrayList<MoviesVo> roleMovie5;
	private ArrayList<MoviesVo> roleMovie6;
	private ArrayList<MoviesVo> directorsTop;
	private ArrayList<MoviesVo> newMovies;
	private ArrayList<MoviesVo> hotMovies;
	private ArrayList<MovieTopPicVo> hotLeft;
	private ArrayList<MovieTopPicVo> hotReghit;
	
	public String movieIndex() throws Exception{
		dao.setPageViews(2);
		hotPlayerTop=movieDao.getHotPlayerTop(1,"keepNum",0,10);
		newMovies=movieDao.getHotPlayerTop(1,"creatTime",0,12);
		hotMovies=movieDao.getHotPlayerTop(1,"playNum",0,12);
		praiseTop=movieDao.getPraise();
		roleMovie1=movieDao.getMoviesByRoleName("曾志伟");
		roleMovie2=movieDao.getMoviesByRoleName("杨幂");
		roleMovie3=movieDao.getMoviesByRoleName("甄子丹");
		roleMovie4=movieDao.getMoviesByRoleName("郑中基");
		roleMovie5=movieDao.getMoviesByRoleName("古天乐");
		roleMovie6=movieDao.getMoviesByRoleName("刘亦菲");
		hotLeft=movieDao.getHotPlayerPic(1,"creatTime",0,6);
		hotReghit=movieDao.getHotPlayerPic(1,"creatTime",6,6);
		directorsTop=movieDao.getDirectors();
		movieCate=movieDao.getCateByBID(1);
		return "movieIndex";
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


	public ArrayList<MoviesVo> getNewMovies() {
		return newMovies;
	}


	public void setNewMovies(ArrayList<MoviesVo> newMovies) {
		this.newMovies = newMovies;
	}


	public ArrayList<MoviesVo> getHotMovies() {
		return hotMovies;
	}


	public void setHotMovies(ArrayList<MoviesVo> hotMovies) {
		this.hotMovies = hotMovies;
	}


	public ArrayList<MovieCateVo> getMovieCate() {
		return movieCate;
	}


	public void setMovieCate(ArrayList<MovieCateVo> movieCate) {
		this.movieCate = movieCate;
	}


	public ArrayList<MoviesVo> getHotPlayerTop() {
		return hotPlayerTop;
	}

	public void setHotPlayerTop(ArrayList<MoviesVo> hotPlayerTop) {
		this.hotPlayerTop = hotPlayerTop;
	}

	public ArrayList<MoviesVo> getPraiseTop() {
		return praiseTop;
	}

	public void setPraiseTop(ArrayList<MoviesVo> praiseTop) {
		this.praiseTop = praiseTop;
	}

	public MovieDao getMovieDao() {
		return movieDao;
	}

	public void setMovieDao(MovieDao movieDao) {
		this.movieDao = movieDao;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}


	public ArrayList<MoviesVo> getRoleMovie1() {
		return roleMovie1;
	}


	public void setRoleMovie1(ArrayList<MoviesVo> roleMovie1) {
		this.roleMovie1 = roleMovie1;
	}


	public ArrayList<MoviesVo> getRoleMovie2() {
		return roleMovie2;
	}


	public void setRoleMovie2(ArrayList<MoviesVo> roleMovie2) {
		this.roleMovie2 = roleMovie2;
	}


	public ArrayList<MoviesVo> getRoleMovie3() {
		return roleMovie3;
	}


	public void setRoleMovie3(ArrayList<MoviesVo> roleMovie3) {
		this.roleMovie3 = roleMovie3;
	}


	public ArrayList<MoviesVo> getRoleMovie4() {
		return roleMovie4;
	}


	public void setRoleMovie4(ArrayList<MoviesVo> roleMovie4) {
		this.roleMovie4 = roleMovie4;
	}


	public ArrayList<MoviesVo> getRoleMovie5() {
		return roleMovie5;
	}


	public void setRoleMovie5(ArrayList<MoviesVo> roleMovie5) {
		this.roleMovie5 = roleMovie5;
	}


	public ArrayList<MoviesVo> getRoleMovie6() {
		return roleMovie6;
	}


	public void setRoleMovie6(ArrayList<MoviesVo> roleMovie6) {
		this.roleMovie6 = roleMovie6;
	}


	public ArrayList<MoviesVo> getDirectorsTop() {
		return directorsTop;
	}


	public void setDirectorsTop(ArrayList<MoviesVo> directorsTop) {
		this.directorsTop = directorsTop;
	}

	
}
