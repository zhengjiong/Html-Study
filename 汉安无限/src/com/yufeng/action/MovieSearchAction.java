package com.yufeng.action;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.components.If;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.net.httpserver.HttpContext;
import com.yufeng.bean.MovieCateVo;
import com.yufeng.bean.MoviesVo;
import com.yufeng.dao.impl.DaoImpl;
import com.yufeng.dao.impl.MovieDao;
@SuppressWarnings("serial")
public class MovieSearchAction extends ActionSupport implements SessionAware{

	private Map session ;
	private MovieDao movieDao;
	private int cateid;
	private int aresid;
	private String key;
	private int bid;
	private int size = 12;
	private int page = 1;
	private int pageCount = 1;
	private int nextPage;
	private ArrayList<Object> arrayList;
	private String keyword;
	private ArrayList<MoviesVo> searchMovies;
	private ArrayList<MovieCateVo> movieCate;	
	private ArrayList<MoviesVo> hotPlayerTop1;
	private ArrayList<MoviesVo> hotPlayerTop2;
	private ArrayList<MoviesVo> hotPlayerTop3;
	private ArrayList<MoviesVo> hotPlayerTop4;
	
	public String searchByCateID() throws Exception{
		if(bid==0)
			setBid(1);
		hotPlayerTop1=movieDao.getHotPlayerTop(1,"creatTime",0,10);
		hotPlayerTop2=movieDao.getHotPlayerTop(2,"creatTime",0,10);
		hotPlayerTop3=movieDao.getHotPlayerTop(3,"creatTime",0,10);
		hotPlayerTop4=movieDao.getHotPlayerTop(4,"creatTime",0,10);
		searchMovies=movieDao.getMoviesBysCateID(cateid,bid,0,1000000);
		session.put("searchMovies", searchMovies);
		movieCate=movieDao.getCateByBID(bid);
		splitPage();
		session.put("page", 1);
		session.put("startNum", 0);
		return "search";
	}
	public String searchByAresid() throws Exception{
		if(bid==0)
			setBid(1);
		hotPlayerTop1=movieDao.getHotPlayerTop(1,"creatTime",0,10);
		hotPlayerTop2=movieDao.getHotPlayerTop(2,"creatTime",0,10);
		hotPlayerTop3=movieDao.getHotPlayerTop(3,"creatTime",0,10);
		hotPlayerTop4=movieDao.getHotPlayerTop(4,"creatTime",0,10);
		searchMovies=movieDao.getMoviesByAeasID(aresid,bid,0,1000000);
		
		session.put("searchMovies", searchMovies);
		movieCate=movieDao.getCateByBID(bid);
		session.put("page", 1);
		session.put("startNum", 0);
		splitPage();
		return "search";
		
	}
	public String searchByKey() throws Exception{
		if(bid==0)
			setBid(1);
		String wordkey;
		hotPlayerTop1=movieDao.getHotPlayerTop(1,"creatTime",0,10);
		hotPlayerTop2=movieDao.getHotPlayerTop(2,"creatTime",0,10);
		hotPlayerTop3=movieDao.getHotPlayerTop(3,"creatTime",0,10);
		hotPlayerTop4=movieDao.getHotPlayerTop(4,"creatTime",0,10);
		if (key==null){
			wordkey="";
		}else if(isNum(key)){
			wordkey=key;
		}else {
			wordkey=new String(key.toString().getBytes("GBK"),"UTF-8").substring(0,2);
		}
		if (keyword==null){
			searchMovies=movieDao.getMoviesByKey(wordkey,bid,cateid,aresid,0,1000000);
		}	
		else {
			searchMovies=movieDao.getMoviesByKey(keyword.trim(),bid,0,1000000);
		}
		session.put("searchMovies", searchMovies);
		session.put("page",1);
		session.put("startNum", 0);
		splitPage();
		return "search";
	}
	public static boolean isNum(String str){
		return str.matches("^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$");
	}
	
	public String showByPageNum() throws Exception{
		hotPlayerTop1=movieDao.getHotPlayerTop(1,"creatTime",0,10);
		hotPlayerTop2=movieDao.getHotPlayerTop(2,"creatTime",0,10);
		hotPlayerTop3=movieDao.getHotPlayerTop(3,"creatTime",0,10);
		hotPlayerTop4=movieDao.getHotPlayerTop(4,"creatTime",0,10);
		
		splitPage();
		int start;
		if(nextPage == -1){
			if(session.get("page")!=null){
				page = (Integer) session.get("page");
			}
			page--;
		}else if (nextPage == 1) {
			if(session.get("page")!=null){
				page = (Integer) session.get("page");
			}
			page++;
		}
		if (page > pageCount) {
			page = pageCount;
		}
		if(page <= 1){
			start = 0;
			page = 1;
		}else {
			start = size*(page-1);
			//System.out.println("start="+start);
		}
		session.put("startNum", start);
		session.put("page", page);
		if (arrayList.contains("...")) {
			ArrayList<Object> tempArrayList = new ArrayList<Object>();
			//System.out.println("getpage="+getPage()+"  arrayList.Size="+arrayList.get(arrayList.size()-1));
			if(getPage()>14 && getPage()<=(Integer)arrayList.get(arrayList.size()-1)){
				//System.out.println("getPage()<arrayList.size()");
				for(int i=getPage()-4;i<getPage()+4;i++){
					//arrayList.get(i);
					if (i > (Integer)arrayList.get(arrayList.size()-1)) {
						break;
					}
					tempArrayList.add(i);
					
				}
				arrayList = tempArrayList;
				//arrayList.add(arrayList.size()-1, "...");
				session.put("pageCount", arrayList);
			}
		}
		return "search";
	}
	private void splitPage(){
		session.put("size", size);
		if(session.get("searchMovies") != null){
			searchMovies = (ArrayList<MoviesVo>) session.get("searchMovies");
		}
		//显示第几页
		if(searchMovies != null){
			int length = searchMovies.size();
			if(length != 0){
				if(length % size == 0){
					pageCount = length/size;
				}else {
					if(length <= size){
						pageCount = 1;
					}else {
						pageCount = length/size+1;
					}
				}
			}
			arrayList = new ArrayList<Object>(pageCount);
			for(int i=1;i<=pageCount;i++){
				if(i > 16 && i < pageCount){
					continue;
				}
				//System.out.println("i="+i);
				//System.out.println("pageCount="+pageCount);
				arrayList.add(i);
			}
			if (pageCount > 17) {
				arrayList.add(arrayList.size()-1, "...");
			}
			session.put("pageCount", arrayList);
		}else {
			ArrayList<Object> arrayList = new ArrayList<Object>(1);
			arrayList.add(1);
			session.put("pageCount", arrayList);
		}
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public ArrayList<MoviesVo> getSearchMovies() {
		return searchMovies;
	}

	public void setSearchMovies(ArrayList<MoviesVo> searchMovies) {
		this.searchMovies = searchMovies;
	}

	public ArrayList<MovieCateVo> getMovieCate() {
		return movieCate;
	}
	public void setMovieCate(ArrayList<MovieCateVo> movieCate) {
		this.movieCate = movieCate;
	}
	public int getCateid() {
		return cateid;
	}

	public void setCateid(int cateid) {
		this.cateid = cateid;
	}

	public int getAresid() {
		return aresid;
	}

	public void setAresid(int aresid) {
		this.aresid = aresid;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
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
	public ArrayList<MoviesVo> getHotPlayerTop1() {
		return hotPlayerTop1;
	}
	public void setHotPlayerTop1(ArrayList<MoviesVo> hotPlayerTop1) {
		this.hotPlayerTop1 = hotPlayerTop1;
	}
	public ArrayList<MoviesVo> getHotPlayerTop2() {
		return hotPlayerTop2;
	}
	public void setHotPlayerTop2(ArrayList<MoviesVo> hotPlayerTop2) {
		this.hotPlayerTop2 = hotPlayerTop2;
	}
	public ArrayList<MoviesVo> getHotPlayerTop3() {
		return hotPlayerTop3;
	}
	public void setHotPlayerTop3(ArrayList<MoviesVo> hotPlayerTop3) {
		this.hotPlayerTop3 = hotPlayerTop3;
	}
	public ArrayList<MoviesVo> getHotPlayerTop4() {
		return hotPlayerTop4;
	}
	public void setHotPlayerTop4(ArrayList<MoviesVo> hotPlayerTop4) {
		this.hotPlayerTop4 = hotPlayerTop4;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	public ArrayList<Object> getArrayList() {
		return arrayList;
	}
	public void setArrayList(ArrayList<Object> arrayList) {
		this.arrayList = arrayList;
	}
	
}
