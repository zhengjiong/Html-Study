package com.yufeng.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.yufeng.bean.AlbumVo;
import com.yufeng.bean.MoviesVo;
import com.yufeng.dao.impl.DaoImpl;
import com.yufeng.dao.impl.MovieDaoImpl;
@SuppressWarnings("serial")
public class StartAction extends ActionSupport implements SessionAware {
	private MovieDaoImpl moviedao;
	private Map session;
	
	//首页列表---全部
	private ArrayList<MoviesVo> moviesvolistall;
	//首页列表---电影
	private ArrayList<MoviesVo> moviesvolistdj;
	//首页列表---电视
	private ArrayList<MoviesVo> moviesvolisttv;
	//首页列表---动漫
	private ArrayList<MoviesVo> moviesvolistdm;
	//首页列表---综艺
	private ArrayList<MoviesVo> moviesvolistzy;
	//首页---科幻推荐--有图
	private ArrayList<MoviesVo> moviesrmdp1;
	//首页---战争剧推荐--有图
	private ArrayList<MoviesVo> moviesman1;
	//首页---日韩剧推荐--有图
	private ArrayList<MoviesVo> movieshwjc1;
	//首页---动漫推荐--有图
	private ArrayList<MoviesVo> moviesrqdm1;
	//首页---港台剧场--有图
	private ArrayList<MoviesVo> moviesgtjc1;
	//首页---综艺推荐--有图
	private ArrayList<MoviesVo> moviesrqzy1;
	//首页---科幻推荐--无图
	private ArrayList<MoviesVo> moviesrmdp2;
	//首页---战争剧推荐--无图
	private ArrayList<MoviesVo> moviesman2;
	//首页---日韩剧推荐--无图
	private ArrayList<MoviesVo> movieshwjc2;
	//首页---动漫推荐--无图
	private ArrayList<MoviesVo> moviesrqdm2;
	//首页---港台推荐--无图
	private ArrayList<MoviesVo> moviesgtjc2;
	//首页---综艺推荐--无图
	private ArrayList<MoviesVo> moviesrqzy2;
	//首页---今日电影
	private ArrayList<MoviesVo> moviestodaym;
	//首页---今日电视
	private ArrayList<MoviesVo> moviestodaytv;
	//首页---今日综艺
	private ArrayList<MoviesVo> moviestodayzy;
	//首页---今日动漫
	private ArrayList<MoviesVo> moviestodaydm;
	//首页-音乐专辑-有图
	private ArrayList<AlbumVo> newAlbumVos;
		//首页下----电影
	private MoviesVo moviesvo1;
	//首页下-----动作分类
	private ArrayList<MoviesVo> dzmovies;
	//首页下-----恐怖分类
	private ArrayList<MoviesVo> kbmovies;
	//首页下-----科幻分类
	private ArrayList<MoviesVo> khmovies;
	//首页下-----爱情分类
	private ArrayList<MoviesVo> aqmovies;
	//首页下-----喜剧分类
	private ArrayList<MoviesVo> xjmovies;
	//首页下-----战争分类
	private ArrayList<MoviesVo> zzmovies;
	//首页下-----电影排行榜
	private ArrayList<MoviesVo> topmovies1;
	//首页下----电视
	private MoviesVo moviesvo2;
	//首页下-----电视--港台
	private ArrayList<MoviesVo> gtmovies;
	//首页下-----电视--日韩
	private ArrayList<MoviesVo> rhmovies;
	//首页下-----电视--欧美
	private ArrayList<MoviesVo> ommovies;
	//首页下-----电视--大陆
	private ArrayList<MoviesVo> dlmovies;
	//首页下-----电视--排行榜
	private ArrayList<MoviesVo> topmovies2;
	//首页下----综艺
	private MoviesVo moviesvo3;
	//首页下-----综艺--港台
	private ArrayList<MoviesVo> gtmovies3;
	//首页下-----综艺--日韩
	private ArrayList<MoviesVo> rhmovies3;
	//首页下-----综艺--大陆
	private ArrayList<MoviesVo> dlmovies3;
	//首页下-----综艺--排行榜
	private ArrayList<MoviesVo> topmovies3;
	//首页下----动漫
	private MoviesVo moviesvo4;
	//首页下-----动漫--港台
	private ArrayList<MoviesVo> ommovies4;
	//首页下-----动漫--日韩
	private ArrayList<MoviesVo> rhmovies4;
	//首页下-----动漫--大陆
	private ArrayList<MoviesVo> dlmovies4;
	//首页下-----动漫--排行榜
	private ArrayList<MoviesVo> topmovies4;
	private DaoImpl dao;
	public String getListMsg()throws Exception{
		dao.setPageViews(1);
		moviesvolistall=moviedao.getAllTop10();
		moviesvolistdj=moviedao.getMoviesByBigID(2);
		moviesvolisttv=moviedao.getMoviesByBigID(3);
		moviesvolistdm=moviedao.getMoviesByBigID(4);
		moviesvolistzy=moviedao.getMoviesByBigID(5);
		moviesrmdp1=moviedao.getHotBigMoviePic(1);
		moviesman1=moviedao.getHotBigMoviePic(2);
		movieshwjc1=moviedao.getHotBigMoviePic(3);
		moviesrqdm1=moviedao.getHotBigMoviePic(4);
		moviesgtjc1=moviedao.getHotBigMoviePic(5);
		moviesrqzy1=moviedao.getHotBigMoviePic(6);
		moviesrmdp2=moviedao.getHotBigMovie(1);
		moviesman2=moviedao.getHotBigMovie(2);
		movieshwjc2=moviedao.getHotBigMovie(3);
		moviesrqdm2=moviedao.getHotBigMovie(4);
		moviesgtjc2=moviedao.getHotBigMovie(5);
		moviesrqzy2=moviedao.getHotBigMovie(6);
		moviestodaym=moviedao.getTodayMovies(1);
		moviestodaytv=moviedao.getTodayMovies(2);
		moviestodayzy=moviedao.getTodayMovies(4);
		moviestodaydm=moviedao.getTodayMovies(3);
		newAlbumVos = dao.getNewAlbums(6);
		moviesvo1=moviedao.getBigMoviesBottom(1);
		dzmovies=moviedao.getMovieBottomByCateID(5);
		kbmovies=moviedao.getMovieBottomByCateID(8);
		khmovies=moviedao.getMovieBottomByCateID(9);
		aqmovies=moviedao.getMovieBottomByCateID(6);
		xjmovies=moviedao.getMovieBottomByCateID(7);
		zzmovies=moviedao.getMovieBottomByCateID(11);
		topmovies1=moviedao.getindexBottomTop(1);
		moviesvo2=moviedao.getBigMoviesBottom(2);
		gtmovies=moviedao.getMovieBottomByCateID(14);
		rhmovies=moviedao.getMovieBottomByCateID(15);
		ommovies=moviedao.getMovieBottomByCateID(16);
		dlmovies=moviedao.getMovieBottomByCateID(13);
		topmovies2=moviedao.getindexBottomTop(2);
		moviesvo3=moviedao.getBigMoviesBottom(4);
		gtmovies3=moviedao.getMovieBottomByCateID(22);
		//ommovies=moviedao.getMovieBottomByCateID(22);
		dlmovies3=moviedao.getMovieBottomByCateID(21);
		topmovies3=moviedao.getindexBottomTop(4);
		moviesvo4=moviedao.getBigMoviesBottom(3);
		ommovies4=moviedao.getMovieBottomByCateID(20);
		rhmovies4=moviedao.getMovieBottomByCateID(18);
		dlmovies4=moviedao.getMovieBottomByCateID(19);
		topmovies4=moviedao.getindexBottomTop(3);
		return "allList";
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


	public ArrayList<MoviesVo> getMoviesvolistall() {
		return moviesvolistall;
	}


	public void setMoviesvolistall(ArrayList<MoviesVo> moviesvolistall) {
		this.moviesvolistall = moviesvolistall;
	}


	public ArrayList<MoviesVo> getMoviesvolistdj() {
		return moviesvolistdj;
	}


	public void setMoviesvolistdj(ArrayList<MoviesVo> moviesvolistdj) {
		this.moviesvolistdj = moviesvolistdj;
	}


	public ArrayList<MoviesVo> getMoviesvolisttv() {
		return moviesvolisttv;
	}


	public void setMoviesvolisttv(ArrayList<MoviesVo> moviesvolisttv) {
		this.moviesvolisttv = moviesvolisttv;
	}


	public ArrayList<MoviesVo> getMoviesvolistdm() {
		return moviesvolistdm;
	}


	public void setMoviesvolistdm(ArrayList<MoviesVo> moviesvolistdm) {
		this.moviesvolistdm = moviesvolistdm;
	}
	public ArrayList<MoviesVo> getMoviesvolistzy() {
		return moviesvolistzy;
	}
	public void setMoviesvolistzy(ArrayList<MoviesVo> moviesvolistzy) {
		this.moviesvolistzy = moviesvolistzy;
	}
	public ArrayList<MoviesVo> getMoviestodaym() {
		return moviestodaym;
	}
	public void setMoviestodaym(ArrayList<MoviesVo> moviestodaym) {
		this.moviestodaym = moviestodaym;
	}
	public ArrayList<MoviesVo> getMoviestodaytv() {
		return moviestodaytv;
	}
	public void setMoviestodaytv(ArrayList<MoviesVo> moviestodaytv) {
		this.moviestodaytv = moviestodaytv;
	}
	public ArrayList<MoviesVo> getMoviestodayzy() {
		return moviestodayzy;
	}
	public void setMoviestodayzy(ArrayList<MoviesVo> moviestodayzy) {
		this.moviestodayzy = moviestodayzy;
	}
	public ArrayList<MoviesVo> getMoviestodaydm() {
		return moviestodaydm;
	}
	public void setMoviestodaydm(ArrayList<MoviesVo> moviestodaydm) {
		this.moviestodaydm = moviestodaydm;
	}


	public ArrayList<MoviesVo> getMoviesrmdp1() {
		return moviesrmdp1;
	}


	public void setMoviesrmdp1(ArrayList<MoviesVo> moviesrmdp1) {
		this.moviesrmdp1 = moviesrmdp1;
	}


	public ArrayList<MoviesVo> getMoviesman1() {
		return moviesman1;
	}


	public void setMoviesman1(ArrayList<MoviesVo> moviesman1) {
		this.moviesman1 = moviesman1;
	}


	public ArrayList<MoviesVo> getMovieshwjc1() {
		return movieshwjc1;
	}


	public void setMovieshwjc1(ArrayList<MoviesVo> movieshwjc1) {
		this.movieshwjc1 = movieshwjc1;
	}


	public ArrayList<MoviesVo> getMoviesrqdm1() {
		return moviesrqdm1;
	}


	public void setMoviesrqdm1(ArrayList<MoviesVo> moviesrqdm1) {
		this.moviesrqdm1 = moviesrqdm1;
	}


	public ArrayList<MoviesVo> getMoviesgtjc1() {
		return moviesgtjc1;
	}


	public void setMoviesgtjc1(ArrayList<MoviesVo> moviesgtjc1) {
		this.moviesgtjc1 = moviesgtjc1;
	}


	public ArrayList<MoviesVo> getMoviesrqzy1() {
		return moviesrqzy1;
	}


	public void setMoviesrqzy1(ArrayList<MoviesVo> moviesrqzy1) {
		this.moviesrqzy1 = moviesrqzy1;
	}


	public ArrayList<MoviesVo> getMoviesrmdp2() {
		return moviesrmdp2;
	}


	public void setMoviesrmdp2(ArrayList<MoviesVo> moviesrmdp2) {
		this.moviesrmdp2 = moviesrmdp2;
	}


	public ArrayList<MoviesVo> getMoviesman2() {
		return moviesman2;
	}


	public void setMoviesman2(ArrayList<MoviesVo> moviesman2) {
		this.moviesman2 = moviesman2;
	}


	public ArrayList<MoviesVo> getMovieshwjc2() {
		return movieshwjc2;
	}


	public void setMovieshwjc2(ArrayList<MoviesVo> movieshwjc2) {
		this.movieshwjc2 = movieshwjc2;
	}


	public ArrayList<MoviesVo> getMoviesrqdm2() {
		return moviesrqdm2;
	}


	public void setMoviesrqdm2(ArrayList<MoviesVo> moviesrqdm2) {
		this.moviesrqdm2 = moviesrqdm2;
	}


	public ArrayList<MoviesVo> getMoviesgtjc2() {
		return moviesgtjc2;
	}


	public void setMoviesgtjc2(ArrayList<MoviesVo> moviesgtjc2) {
		this.moviesgtjc2 = moviesgtjc2;
	}


	public ArrayList<MoviesVo> getMoviesrqzy2() {
		return moviesrqzy2;
	}


	public void setMoviesrqzy2(ArrayList<MoviesVo> moviesrqzy2) {
		this.moviesrqzy2 = moviesrqzy2;
	}
	public ArrayList<AlbumVo> getNewAlbumVos() {
		return newAlbumVos;
	}
	public void setNewAlbumVos(ArrayList<AlbumVo> newAlbumVos) {
		this.newAlbumVos = newAlbumVos;
	}


	public MoviesVo getMoviesvo1() {
		return moviesvo1;
	}


	public void setMoviesvo1(MoviesVo moviesvo1) {
		this.moviesvo1 = moviesvo1;
	}


	public ArrayList<MoviesVo> getDzmovies() {
		return dzmovies;
	}


	public void setDzmovies(ArrayList<MoviesVo> dzmovies) {
		this.dzmovies = dzmovies;
	}


	public ArrayList<MoviesVo> getKbmovies() {
		return kbmovies;
	}


	public void setKbmovies(ArrayList<MoviesVo> kbmovies) {
		this.kbmovies = kbmovies;
	}


	public ArrayList<MoviesVo> getKhmovies() {
		return khmovies;
	}


	public void setKhmovies(ArrayList<MoviesVo> khmovies) {
		this.khmovies = khmovies;
	}


	public ArrayList<MoviesVo> getAqmovies() {
		return aqmovies;
	}


	public void setAqmovies(ArrayList<MoviesVo> aqmovies) {
		this.aqmovies = aqmovies;
	}


	public ArrayList<MoviesVo> getXjmovies() {
		return xjmovies;
	}


	public void setXjmovies(ArrayList<MoviesVo> xjmovies) {
		this.xjmovies = xjmovies;
	}


	public ArrayList<MoviesVo> getZzmovies() {
		return zzmovies;
	}


	public void setZzmovies(ArrayList<MoviesVo> zzmovies) {
		this.zzmovies = zzmovies;
	}


	public ArrayList<MoviesVo> getTopmovies1() {
		return topmovies1;
	}


	public void setTopmovies1(ArrayList<MoviesVo> topmovies1) {
		this.topmovies1 = topmovies1;
	}


	public MoviesVo getMoviesvo2() {
		return moviesvo2;
	}


	public void setMoviesvo2(MoviesVo moviesvo2) {
		this.moviesvo2 = moviesvo2;
	}


	public ArrayList<MoviesVo> getGtmovies() {
		return gtmovies;
	}


	public void setGtmovies(ArrayList<MoviesVo> gtmovies) {
		this.gtmovies = gtmovies;
	}


	public ArrayList<MoviesVo> getRhmovies() {
		return rhmovies;
	}


	public void setRhmovies(ArrayList<MoviesVo> rhmovies) {
		this.rhmovies = rhmovies;
	}


	public ArrayList<MoviesVo> getOmmovies() {
		return ommovies;
	}


	public void setOmmovies(ArrayList<MoviesVo> ommovies) {
		this.ommovies = ommovies;
	}


	public ArrayList<MoviesVo> getDlmovies() {
		return dlmovies;
	}


	public void setDlmovies(ArrayList<MoviesVo> dlmovies) {
		this.dlmovies = dlmovies;
	}


	public ArrayList<MoviesVo> getTopmovies2() {
		return topmovies2;
	}


	public void setTopmovies2(ArrayList<MoviesVo> topmovies2) {
		this.topmovies2 = topmovies2;
	}


	public MoviesVo getMoviesvo3() {
		return moviesvo3;
	}


	public void setMoviesvo3(MoviesVo moviesvo3) {
		this.moviesvo3 = moviesvo3;
	}


	public ArrayList<MoviesVo> getGtmovies3() {
		return gtmovies3;
	}


	public void setGtmovies3(ArrayList<MoviesVo> gtmovies3) {
		this.gtmovies3 = gtmovies3;
	}


	public ArrayList<MoviesVo> getRhmovies3() {
		return rhmovies3;
	}


	public void setRhmovies3(ArrayList<MoviesVo> rhmovies3) {
		this.rhmovies3 = rhmovies3;
	}


	public ArrayList<MoviesVo> getDlmovies3() {
		return dlmovies3;
	}


	public void setDlmovies3(ArrayList<MoviesVo> dlmovies3) {
		this.dlmovies3 = dlmovies3;
	}


	public ArrayList<MoviesVo> getTopmovies3() {
		return topmovies3;
	}


	public void setTopmovies3(ArrayList<MoviesVo> topmovies3) {
		this.topmovies3 = topmovies3;
	}


	public MoviesVo getMoviesvo4() {
		return moviesvo4;
	}


	public void setMoviesvo4(MoviesVo moviesvo4) {
		this.moviesvo4 = moviesvo4;
	}
	public ArrayList<MoviesVo> getRhmovies4() {
		return rhmovies4;
	}


	public ArrayList<MoviesVo> getOmmovies4() {
		return ommovies4;
	}


	public void setOmmovies4(ArrayList<MoviesVo> ommovies4) {
		this.ommovies4 = ommovies4;
	}


	public void setRhmovies4(ArrayList<MoviesVo> rhmovies4) {
		this.rhmovies4 = rhmovies4;
	}


	public ArrayList<MoviesVo> getDlmovies4() {
		return dlmovies4;
	}


	public void setDlmovies4(ArrayList<MoviesVo> dlmovies4) {
		this.dlmovies4 = dlmovies4;
	}


	public ArrayList<MoviesVo> getTopmovies4() {
		return topmovies4;
	}


	public void setTopmovies4(ArrayList<MoviesVo> topmovies4) {
		this.topmovies4 = topmovies4;
	}
	
}
