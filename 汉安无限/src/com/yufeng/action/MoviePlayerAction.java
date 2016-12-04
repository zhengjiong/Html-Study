package com.yufeng.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.MoviesPathVO;
import com.yufeng.bean.MoviesVo;
import com.yufeng.dao.impl.DaoImpl;
import com.yufeng.dao.impl.MovieDao;
@SuppressWarnings("serial")
public class MoviePlayerAction extends ActionSupport implements SessionAware{
	private DaoImpl dao;
	private MovieDao movieDao;
	private Map session;
	private ArrayList<MoviesVo> list;
	private ArrayList<MoviesPathVO> moviesPathList;
	private MoviesPathVO moviepath;
	private int ID;
	private MoviesVo movie;
	private String type;
	private int movieNum;
	private String addressmsg;
	private ArrayList<MoviesVo> likeType;

	public String player() throws Exception {
		dao.setPageViews(6);
		movie = dao.getMovieDetail(ID);
		if (movie==null){
			addActionError("");
			return "error";
		}
		if(movieNum==0){
			setMovieNum(1);
		}
		likeType=movieDao.getMoviesBysCateID(movie.getCateID(), movie.getBigCateID(), 0, 8);
		moviesPathList=dao.getMoviesPathByID(Integer.parseInt(movie.getAddress()));
		moviepath=dao.getMoviesPathByIDAndNum(Integer.parseInt(movie.getAddress()), movieNum);
		
		if(moviepath==null){
			addressmsg="对不起！该影片存在异常，请通过本站的网上留言，将信息反馈给我们，我们会尽快处理！";
		}else {
			addressmsg="";
		}
		String[] s = moviepath.getAddress().split("\\.");

		if (s[s.length-1].equals("flv")||s[s.length-1].equals("mp4")) {
			type = "flvplayer";
		} else {
			type = "realplayer";
		}

		return "player";
	}
	
	

	public MovieDao getMovieDao() {
		return movieDao;
	}



	public void setMovieDao(MovieDao movieDao) {
		this.movieDao = movieDao;
	}



	public ArrayList<MoviesVo> getLikeType() {
		return likeType;
	}



	public void setLikeType(ArrayList<MoviesVo> likeType) {
		this.likeType = likeType;
	}



	public String getAddressmsg() {
		return addressmsg;
	}

	public void setAddressmsg(String addressmsg) {
		this.addressmsg = addressmsg;
	}

	public ArrayList<MoviesPathVO> getMoviesPathList() {
		return moviesPathList;
	}

	public void setMoviesPathList(ArrayList<MoviesPathVO> moviesPathList) {
		this.moviesPathList = moviesPathList;
	}

	public MoviesPathVO getMoviepath() {
		return moviepath;
	}

	public void setMoviepath(MoviesPathVO moviepath) {
		this.moviepath = moviepath;
	}

	public int getMovieNum() {
		return movieNum;
	}

	public void setMovieNum(int movieNum) {
		this.movieNum = movieNum;
	}

	public ArrayList<MoviesVo> getList() {
		return list;
	}

	public void setList(ArrayList<MoviesVo> list) {
		this.list = list;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public MoviesVo getMovie() {
		return movie;
	}

	public void setMovie(MoviesVo movie) {
		this.movie = movie;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

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
